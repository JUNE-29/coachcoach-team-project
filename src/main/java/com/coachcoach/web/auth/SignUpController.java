package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth")
public class SignUpController {

  @Autowired
  ServletContext servletContext;

  @GetMapping("signup")
  public void signUp() {}


}
