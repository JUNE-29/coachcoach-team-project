package com.coachcoach.web.auth;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth")
public class AuthController {

  @GetMapping("login")
  public void logIn() {}

  @GetMapping("logout")
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:login";
  }

  @GetMapping("rejected")
  public void rejected() {}

}
