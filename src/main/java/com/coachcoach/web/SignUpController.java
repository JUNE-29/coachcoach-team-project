package com.coachcoach.web;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/signUp")
public class SignUpController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;

  @GetMapping("form")
  public void form() {}

  @PostMapping("add")
  public void add() {}
}

