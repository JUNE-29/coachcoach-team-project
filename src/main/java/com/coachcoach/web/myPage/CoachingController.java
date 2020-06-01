package com.coachcoach.web.myPage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.tika.Tika;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.CalendarFile;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberProgramCalendar;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramBoardService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.service.MemberProgramCalendarService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/myPage/coaching")
public class CoachingController {

  static Logger logger = LogManager.getLogger(CoachingController.class);
  @Autowired
  ServletContext servletContext;
  @Autowired
  HttpSession session;

  @Autowired
  MemberProgramCalendarService memberProgramCalendarService;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @Autowired
  CoachingProgramBoardService coachingProgramBoardService;

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("list") // 캘린더 페이지
  public void list(Model model, @RequestParam(defaultValue = "0") int memberCoachingProgramNo)
      throws Exception {
    // 일반 회원은 멤버번호로 접근, 코치는 멤버코칭프로그램번호로 접근
    if (session.getAttribute("loginUser") instanceof Member) {
      model.addAttribute("list", memberProgramCalendarService
          .listByMemberNo(((Member) session.getAttribute("loginUser")).getNo()));
      model.addAttribute("notice", coachingProgramBoardService
          .getByMemberNo(((Member) session.getAttribute("loginUser")).getNo()));
      return;
    } else if (memberCoachingProgramNo == 0) {
      model.addAttribute("list", memberProgramCalendarService
          .listByMemberCoachingProgramNo((int) session.getAttribute("memberCoachingProgramNo")));
    } else {
      model.addAttribute("list",
          memberProgramCalendarService.listByMemberCoachingProgramNo(memberCoachingProgramNo));
      session.setAttribute("memberCoachingProgramNo", memberCoachingProgramNo);
    }
    model.addAttribute("notice",
        coachingProgramBoardService.getByMemberNo(memberCoachingProgramService
            .get((int) session.getAttribute("memberCoachingProgramNo")).getMemberNo()));
    session.setAttribute("memberCoachingProgram",
        memberCoachingProgramService.get((int) session.getAttribute("memberCoachingProgramNo")));
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("planList") // 캘린더 페이지
  public void planList(HttpServletResponse response) throws Exception {
    Gson json = new Gson();
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    if (session.getAttribute("loginUser") instanceof Member) {
      out.print(json.toJson(memberProgramCalendarService
          .listByMemberNo(((Member) session.getAttribute("loginUser")).getNo())));
      out.flush();
      return;
    } else {
      out.print(json.toJson(memberProgramCalendarService
          .listByMemberCoachingProgramNo((int) session.getAttribute("memberCoachingProgramNo"))));
      out.flush();
    }
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @PostMapping("detail")
  public void detail(HttpServletResponse response, int no) throws Exception {
    Gson json = new Gson();
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(json.toJson(memberProgramCalendarService.get(no)));
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("noticeDetail")
  public void noticeDetail(Model model, int no) throws Exception {
    model.addAttribute("detail", coachingProgramBoardService.get(no));
  }


  // 회원, 코치 둘다 접근 가능 ^^^^^^


  // 코치만 접근 가능 VVVVVV
  @PostMapping("add")
  public String add(MemberProgramCalendar memberProgramCalendar, MultipartFile[] inputFiles)
      throws Exception {
    List<CalendarFile> list = new ArrayList<>();

    String dirPath = servletContext.getRealPath("/upload/calendarFile");
    for (MultipartFile f : inputFiles) {
      if (f.getSize() <= 0) {
        continue;
      }

      String filename = UUID.randomUUID().toString();
      File file = new File(dirPath + "/" + filename);
      f.transferTo(new File(dirPath + "/" + filename));

      InputStream inputStream = new FileInputStream(file);

      if (checkImageMimeType(inputStream)) {
        list.add(new CalendarFile().setPath(filename).setFileType("image"));
      } else {
        list.add(new CalendarFile().setPath(filename).setFileType("etc"));
      }
    }
    memberProgramCalendar.setFiles(list);

    memberProgramCalendarService.add(memberProgramCalendar);
    return "redirect:list";
  }

  @PostMapping("updateForm") // 운동 코칭 수정
  public void updateForm(Model model, int no) throws Exception {
    model.addAttribute("detail", memberProgramCalendarService.get(no));
  }

  @ResponseBody
  @PostMapping(value="uploadSummernoteImageFile", produces = "application/json")
  public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) throws Exception {
    JsonObject jsonObject = new JsonObject();

    String dirPath = servletContext.getRealPath("/upload/calendarFile");
    String originalFileName = multipartFile.getOriginalFilename();  //오리지날 파일명
    String extension = originalFileName.substring(originalFileName.lastIndexOf("."));   //파일 확장자

    String savedFileName = UUID.randomUUID() + extension;   //저장될 파일 명

    File targetFile = new File(dirPath + savedFileName);

    try {
        InputStream fileStream = multipartFile.getInputStream();
        FileUtils.copyInputStreamToFile(fileStream, targetFile);    //파일 저장
        jsonObject.addProperty("url", dirPath+"/"+savedFileName);
        jsonObject.addProperty("responseCode", "success");

    } catch (IOException e) {
        FileUtils.deleteQuietly(targetFile);    //저장된 파일 삭제
        jsonObject.addProperty("responseCode", "error");
        e.printStackTrace();
    }

    return jsonObject;
  }

  @PostMapping("update")
  public void update(MemberProgramCalendar memberProgramCalendar, MultipartFile[] inputFiles)
      throws Exception {
    List<CalendarFile> list = new ArrayList<>();

    String dirPath = servletContext.getRealPath("/upload/calendarFile");
    for (MultipartFile f : inputFiles) {
      if (f.getSize() <= 0) {
        continue;
      }

      String filename = UUID.randomUUID().toString();
      File file = new File(dirPath + "/" + filename);
      f.transferTo(new File(dirPath + "/" + filename));

      InputStream inputStream = new FileInputStream(file);

      if (checkImageMimeType(inputStream)) {
        list.add(new CalendarFile().setPath(filename).setFileType("image"));
      } else {
        list.add(new CalendarFile().setPath(filename).setFileType("etc"));
      }
    }
    memberProgramCalendar.setFiles(list);

    memberProgramCalendarService.update(memberProgramCalendar);
  }

  @PostMapping("delete")
  public String delete(int no) throws Exception {
    memberProgramCalendarService.delete(no);
    return "redirect:list";
  }

  /**
   * MIME TYPE 확인
   *
   * @param input
   * @return
   * @throws IOException
   */
  public static boolean checkImageMimeType(InputStream file) throws IOException {

    Tika tika = new Tika();

    String mimeType = tika.detect(file);

    logger.debug("### MIME Type = {}", mimeType);

    if (mimeType.startsWith("image")) {
      return true;
    } else {
      return false;
    }
  }

}
