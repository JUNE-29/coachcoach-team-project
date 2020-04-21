package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/auth")
public class MemberFindPasswordController {
  @Autowired
  MemberService memberService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("memberfindpasswordform")
  public void memberFindPasswordForm() {}

  @PostMapping("memberfindpassword")
  public void memberFindPassword() {}

}
