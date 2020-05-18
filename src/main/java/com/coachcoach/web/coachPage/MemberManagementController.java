package com.coachcoach.web.coachPage;

import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberCoachingProgramService;
import com.google.gson.Gson;

//@Auth(role = Role.COACH)
//@Controller
//@RequestMapping("coachPage/memberManagement")
public class MemberManagementController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("list")
  public void list(HttpSession session, Model model) throws Exception {
    model.addAttribute("list", memberCoachingProgramService
        .memberList(((Coach) session.getAttribute("loginUser")).getNo()));
  }

  @GetMapping("detail")
  public void detail(int no, HttpServletResponse response) throws Exception {
    Gson json = new Gson();
    response.setCharacterEncoding("utf-8");
    PrintWriter out = response.getWriter();
    out.print(json.toJson(memberCoachingProgramService.get(no)));
    out.flush();
  }

}
