package com.coachcoach.web.myCoach;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach/modify")
public class ModifyController {

	@Autowired
	MemberService memberService;

	@Autowired
	HttpSession httpSession;

	@GetMapping("form") // 회원정보 수정
	public void form(Model model) throws Exception {
		Member member = (Member) httpSession.getAttribute("loginUser");
		model.addAttribute("member", memberService.get(member.getNo()));
	}

	@PostMapping("modify")
	public void modify(Member member, @RequestParam("updatePassword") String[] updatePassword)
			throws Exception {
		if (updatePassword[0].equals(updatePassword[1])) {
			member.setPassword(updatePassword[0]);
			memberService.update(member);
		}
	}

	@GetMapping("withdrawForm") // 비밀번호 재확인
	public void withdrawForm() {}

	@PostMapping("withdrawReason") // 아이디,비번 일치시 처리하는 메서드
	public String withdraw(Model model, String id, String password) throws Exception {
		Member member = memberService.get(id, password);
		if (member != null) {
			model.addAttribute("member", member);
			return "redirect:withdraw";
		} else {
			return "redirect:withdrawFail";
		}
	}

	@PostMapping("withdraw") // 회원탈퇴 사유
	public void withdrawReason(HttpSession session, Member member) throws Exception {
		member.setWithdrawal(0);
		memberService.update(member);
		session.invalidate();
	}

}
