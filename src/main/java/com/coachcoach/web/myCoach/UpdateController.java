package com.coachcoach.web.myCoach;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach")
public class UpdateController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;


  @GetMapping("updateForm") // 회원정보 수정
  public void updateForm() {}

  @PostMapping("update")
  public void update() {}

  @GetMapping("withdrawForm1") // 비밀번호 재확인
  public void withdrawForm1() {}

  @PostMapping("withdraw1")
  public void withdraw1() {}

  @GetMapping("withdrawForm2") // 회원탈퇴 사유
  public void withdrawForm2() {}

  @PostMapping("withdraw2")
  public void withdraw2() {} // refresh로 jsp 출력후 메인 페이지 이동
}
