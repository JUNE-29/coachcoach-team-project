package com.coachcoach.web.myCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mycoach/modify")
public class ModifyController {


  @GetMapping("form") // 회원정보 수정
  public void form() {}

  @PostMapping("modify")
  public void modify() {}

  @GetMapping("withdrawForm1") // 비밀번호 재확인
  public void withdrawForm1() {}

  @PostMapping("withdraw1") // 아이디,비번 일치시 처리하는 메서드
  public void withdraw1() {}

  @PostMapping("withdrawForm2") // 회원탈퇴 사유
  public void withdrawForm2() {}

  @PostMapping("withdraw")
  public void withdraw() {} // refresh로 jsp 출력후 메인 페이지 이동

  @PostMapping("withdraw2")
  public void withdraw2() {} // refresh로 jsp 출력후 메인 페이지 이동
}
