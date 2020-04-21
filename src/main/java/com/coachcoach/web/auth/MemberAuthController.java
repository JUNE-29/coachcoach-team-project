package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/auth/member")
public class MemberAuthController {
  @Autowired
  MemberService memberService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void memberForm() {}

  @PostMapping("login")
  public void memberLogin() {}

  @GetMapping("findidform")
  public void memberFindIdForm() {}

  @PostMapping("findid")
  public void memberFindId() {}

  @GetMapping("findpasswordform")
  public void memberFindPasswordForm() {}

  @PostMapping("findpassword")
  public void memberFindPassword() {}

  @GetMapping("addform")
  public void memberAddForm() {} // 회원가입폼

  @PostMapping("add")
  public void memberAdd() {} // 회원가입

  // @PostMapping("login")
  // public void login(String id, String password) throws Exception {
  // Member member = memberService.get(id, password);
  // if (member != null) {
  // servletContext.setAttribute("loginUser", member);
  // }
  // }
}
