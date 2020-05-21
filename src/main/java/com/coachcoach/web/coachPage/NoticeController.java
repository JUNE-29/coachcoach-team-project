package com.coachcoach.web.coachPage;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.domain.CoachingProgramBoard;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramBoardService;
import com.coachcoach.service.CoachingProgramService;
import com.google.gson.Gson;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/notice")
public class NoticeController {

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

}
