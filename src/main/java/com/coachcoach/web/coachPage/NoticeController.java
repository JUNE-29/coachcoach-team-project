package com.coachcoach.web.coachPage;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.Coach;
import com.coachcoach.domain.CoachingProgramBoard;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramBoardService;
import com.coachcoach.service.CoachingProgramService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/notice")
public class NoticeController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  HttpSession session;

  @Autowired
  CoachingProgramBoardService coachingProgramBoardService;

  @Autowired
  CoachingProgramService coachingProgramService;

  @PostMapping("add")
  public String add(CoachingProgramBoard coachingProgramBoard, int programNo) throws Exception {
    coachingProgramBoard.setCoachNo(((Coach) session.getAttribute("loginUser")).getNo());
    coachingProgramBoard.setProgramNo(programNo);
    coachingProgramBoardService.add(coachingProgramBoard);
    return "redirect:list";
  }

  @PostMapping("delete")
  public String delete(int no) throws Exception {
    coachingProgramBoardService.delete(no);
    return "redirect:list";
  }

  @GetMapping("detail")
  public void detail(HttpServletResponse response, int no) throws Exception {
    CoachingProgramBoard board = coachingProgramBoardService.get(no);
    Gson json = new Gson();
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(json.toJson(board));
    out.flush();
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    int coachNo = ((Coach) session.getAttribute("loginUser")).getNo();
    model.addAttribute("list", coachingProgramBoardService.listByCoachNo(coachNo));
    model.addAttribute("programList", coachingProgramService.list(coachNo));
  }

  @PostMapping("update")
  public String update(CoachingProgramBoard coachingProgramBoard) throws Exception {
    coachingProgramBoardService.update(coachingProgramBoard);
    return "redirect:list";
  }

  @ResponseBody
  @PostMapping(value="uploadSummernoteImageFile", produces = "application/json")
  public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) throws Exception {
    JsonObject jsonObject = new JsonObject();

    String dirPath = servletContext.getRealPath("/upload/notice");
    String originalFileName = multipartFile.getOriginalFilename();  //오리지날 파일명
    String extension = originalFileName.substring(originalFileName.lastIndexOf("."));   //파일 확장자

    String savedFileName = UUID.randomUUID() + extension;   //저장될 파일 명

    File targetFile = new File(dirPath + "/" + savedFileName);

    try {
        multipartFile.transferTo(targetFile);
        System.out.println(servletContext.getContextPath());
        jsonObject.addProperty("url", servletContext.getContextPath() +"/upload/notice/" + savedFileName);
        jsonObject.addProperty("responseCode", "success");

    } catch (IOException e) {
        FileUtils.deleteQuietly(targetFile);    //저장된 파일 삭제
        jsonObject.addProperty("responseCode", "error");
        e.printStackTrace();
    }

    return jsonObject;
  }

}
