package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/auth")
public class CoachAuthController {
  @Autowired
  CoachService coachService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("coachform")
  public void coachForm() {}

  @PostMapping("coachlogin")
  public void coachLogin() {}

  // @PostMapping("login")
  // public void login(String id, String password) throws Exception {
  // Member member = memberService.get(id, password);
  // if (member != null) {
  // servletContext.setAttribute("loginUser", member);
  // }
  // }
}
