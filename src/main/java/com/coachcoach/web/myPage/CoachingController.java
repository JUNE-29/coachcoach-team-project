package com.coachcoach.web.myPage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.CalendarFile;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberProgramCalendar;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.service.MemberProgramCalendarService;

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

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("list") // 캘린더 페이지
  public void list(Model model, @RequestParam(defaultValue = "0") int memberCoachingProgramNo)
      throws Exception {
    if (session.getAttribute("loginUser") instanceof Member) {
      model.addAttribute("list", memberProgramCalendarService
          .listByMemberNo(((Member) session.getAttribute("loginUser")).getNo()));
    } else if (memberCoachingProgramNo == 0) {
      model.addAttribute("list", memberProgramCalendarService
          .listByMemberCoachingProgramNo((int) session.getAttribute("memberCoachingProgramNo")));
    } else {
      model.addAttribute("list",
          memberProgramCalendarService.listByMemberCoachingProgramNo(memberCoachingProgramNo));
      session.setAttribute("memberCoachingProgramNo", memberCoachingProgramNo);
    }
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @PostMapping("detail")
  public void detail(Model model, int no) throws Exception {
    model.addAttribute("detail", memberProgramCalendarService.get(no));
  }

  // 회원, 코치 둘다 접근 가능 ^^^^^^


  // 코치만 접근 가능 VVVVVV
  @GetMapping("addForm") // 운동 코칭 적음
  public void addForm(Model model) throws Exception {
    model.addAttribute("memberCoachingProgram",
        memberCoachingProgramService.get((int) session.getAttribute("memberCoachingProgramNo")));
  }

  @PostMapping("add")
  public void add(MemberProgramCalendar memberProgramCalendar, MultipartFile[] inputFiles)
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
  }

  @PostMapping("updateForm") // 운동 코칭 수정
  public void updateForm(Model model, int no) throws Exception {
    model.addAttribute("detail", memberProgramCalendarService.get(no));
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
  public void delete(int no) throws Exception {
    memberProgramCalendarService.delete(no);
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
