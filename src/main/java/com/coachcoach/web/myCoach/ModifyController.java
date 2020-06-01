package com.coachcoach.web.myCoach;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/modify")
public class ModifyController {

  @Autowired
  MemberService memberService;

  @Autowired
  HttpSession httpSession;

  @GetMapping("checkPasswordForm")
  public void checkPasswordForm() throws Exception {}

  @PostMapping("checkPassword") // 비밀번호 재확인
  public String withdrawForm(HttpSession session, String password) throws Exception {
    Member member = (Member) session.getAttribute("loginUser");
    if (memberService.get(member.getNo(), member.getId(), password) != null) {
      return "redirect:form";
    }
    return "redirect:checkPasswordForm"; // 틀렸을시.
  }


  @GetMapping("form") // 회원정보 수정
  public void form(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
  }

  @ResponseBody
  @PostMapping("modify")
  public int modify(Member member, String pw, String updatePw, int no)
      throws Exception {
    Map<String,Object> params = new HashMap<>();
    params.put("password",updatePw);
    params.put("no", no);
    return memberService.updatePW(params);
  }

  @GetMapping("withdrawForm") // 비밀번호 재확인
  public void withdrawForm(Model model, int no) throws Exception {
    model.addAttribute("member", memberService.get(no));
  }

  @PostMapping("withdrawConfirm") // 아이디,비번 일치시 처리하는 메서드
  public void withdrawConfirm(Model model, int no, String id, String password) throws Exception {
    model.addAttribute("member", memberService.get(no, id, password));
  }

  @ ResponseBody
  @PostMapping("withdraw") // 회원탈퇴 사유
  public int withdraw(HttpSession session, int no, String withdrawalReason,String withdrawalReason2) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("no", no);
    params.put("withdrawalReason", withdrawalReason+ "," + withdrawalReason2);
    params.put("withdrawal", 0);
    int returnNo = memberService.updateWithdrawal(params);
    session.invalidate();
    return returnNo;
  }

}
