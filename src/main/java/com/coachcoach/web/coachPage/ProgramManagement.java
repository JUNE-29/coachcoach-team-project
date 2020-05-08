package com.coachcoach.web.coachPage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.CoachingProgramService;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/programManagement")
public class ProgramManagement {

  @Autowired
  HttpSession httpSession;

  @Autowired
  ServletContext servletContext;

  @Autowired
  CoachService coachService;

  @Autowired
  CoachingProgramService coachingProgramService;

  @PostMapping("addForm")
  public void addForm(int coachNo, Model model) throws Exception {
    System.out.println(coachNo);
    model.addAttribute("coachNo", coachNo);
  }

  @PostMapping("add")
  public String add(CoachingProgram coachingProgram) throws Exception {
    System.out.println(coachingProgram.getCoachNo());
    if (coachingProgramService.add(coachingProgram) > 0) {
      return "redirect:list";
    } else {
      throw new Exception(" 프로그램을 추가할 수 없습니다.");
    }
  }

  @GetMapping("delete")
  public void delete(int programNo) throws Exception {
    if (coachingProgramService.delete(programNo) > 0) {
    } else {
      throw new Exception("삭제할 게시물 번호가 유효하지 않습니다.");
    }
  }

  @GetMapping("detail")
  public void detail(int programNo, Model model) throws Exception {
    CoachingProgram coachingProgram = coachingProgramService.getdetail(programNo);
    model.addAttribute("program", coachingProgram);

  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    Coach coach = (Coach) httpSession.getAttribute("loginUser");
    model.addAttribute("list", coachingProgramService.list(coach.getNo()));
    model.addAttribute("coachNo", coach.getNo());
  }

  @PostMapping("update")
  public void update(CoachingProgram coachingProgram) throws Exception {
    System.out.println(coachingProgram.getNo());
    if (coachingProgramService.update(coachingProgram) > 0) {
    } else {
      throw new Exception(" 프로그램을 추가할 수 없습니다.");
    }
  }

  @GetMapping("updateForm")
  public void updateForm(int programNo, Model model) throws Exception {
    model.addAttribute("program", coachingProgramService.getdetail(programNo));
  }

}
