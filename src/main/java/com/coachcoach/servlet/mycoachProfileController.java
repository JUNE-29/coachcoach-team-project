package com.coachcoach.servlet;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach")
public class mycoachProfileController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;


  @GetMapping("list")
  public void list() {}

  @PostMapping("photoupdate")
  public void photoupdate() {}

}
