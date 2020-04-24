package com.coachcoach.web.myCoach;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach/modify")
public class ModifyController {

  @Autowired
  MemberService memberService;

  @GetMapping("form") // 회원정보 수정
  public void form(Model model) throws Exception {
    model.addAttribute("member", memberService.get(2));
  }

  @PostMapping("modify")
  public void modify(Member member) throws Exception {
    memberService.update(member);
  }

  @GetMapping("withdrawForm") // 비밀번호 재확인
  public void withdrawForm() {}

  @PostMapping("withdrawReason") // 아이디,비번 일치시 처리하는 메서드
  public void withdraw(Model model, String id, String password) throws Exception {
    Member member = memberService.get(id, password);
    model.addAttribute("member", member);
  }

  @PostMapping("withdraw") // 회원탈퇴 사유
  public void withdrawReason(HttpSession session, String withdrawalReason) throws Exception {
    Member member = memberService.get(2);
    member.setWithdrawalReason(withdrawalReason);
    member.setWithdrawal(0);
    memberService.update(member);
    session.invalidate();
  }

}
