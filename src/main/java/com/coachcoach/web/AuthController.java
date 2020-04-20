package com.coachcoach.web;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/auth")
public class AuthController {
  @Autowired
  MemberService memberService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void form() {}

  @PostMapping("login")
  public void login(String id, String password) throws Exception {
    Member member = memberService.get(id, password);
    if (member != null) {
      servletContext.setAttribute("loginUser", member);
    }
  }
}
