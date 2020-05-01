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
@RequestMapping("/coachPage/payment")
public class PaymentController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("search")
  public void search() throws Exception {}

  @GetMapping("list")
  public void list(HttpSession session, Model model) throws Exception {
    Coach coach = (Coach) session.getAttribute("loginUser");
    model.addAttribute("list", memberCoachingProgramService.listByCoachNo(coach.getNo()));
  }


}
