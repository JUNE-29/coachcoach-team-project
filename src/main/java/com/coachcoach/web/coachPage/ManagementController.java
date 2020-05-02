package com.coachcoach.web.coachPage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.service.MemberCoachingProgramService;

@Controller
@RequestMapping("coachPage/memberManagement")
public class ManagementController {

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
  public void detail() throws Exception {}

}
