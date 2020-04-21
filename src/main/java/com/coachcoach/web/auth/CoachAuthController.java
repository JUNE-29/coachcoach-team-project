package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/auth/coach")
public class CoachAuthController {
  @Autowired
  CoachService coachService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void coachForm() {} // 로그인폼

  @PostMapping("login")
  public void coachLogin() {} // 로그인 후

  @GetMapping("findidform")
  public void coachFindIdForm() {} // 코치아이디찾기 폼

  @PostMapping("findid")
  public void coachFindId() {} // 코치 아이디 후

  @GetMapping("findpasswordform")
  public void coachFindPasswordForm() {} // 코치 패스워드 찾기 폼

  @PostMapping("findpassword")
  public void coachFindPassword() {} // 코치 패스워드 찾기

  @GetMapping("addform")
  public void coachaddform() {} // 코치 회원가입 폼

  @PostMapping("add")
  public void coachadd() {} // 코치 회원가입

  // @PostMapping("login")
  // public void login(String id, String password) throws Exception {
  // Member member = memberService.get(id, password);
  // if (member != null) {
  // servletContext.setAttribute("loginUser", member);
  // }
  // }
}
