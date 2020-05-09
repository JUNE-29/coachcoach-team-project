package com.coachcoach.web.myCoach;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/apply")
public class ApplyController {

	@Autowired
	HttpSession httpSession;

	@Autowired
	CoachingProgramService coachingProgramService;

	@Autowired
	MemberService memberService;

	@GetMapping("list") // 신청내역
	public void applyList(Model model) throws Exception {
		Member member = (Member) httpSession.getAttribute("loginUser");
		model.addAttribute("programList", coachingProgramService.applyList(member.getNo()));
	}

	@GetMapping("rejectForm") // 거절사유
	public void rejectForm() {}

	@GetMapping("orderForm") // 결제
	public void orderForm(Model model) throws Exception {
		Member member = (Member) httpSession.getAttribute("loginUser");
		model.addAttribute("member", memberService.get(member.getNo()));

		Map<String, Object> params = new HashMap<>();
		params.put("status", "결제대기중");
		params.put("no", member.getNo());
		model.addAttribute("item", coachingProgramService.findByMemberNo(params));
	}


	@GetMapping("payments") // 결제
	public String payments(Model model, String payment) throws Exception{
		Member member = (Member) httpSession.getAttribute("loginUser");
		if (payment.equals("creditCard")) {
			model.addAttribute("member", memberService.get(member.getNo()));
			Map<String, Object> params = new HashMap<>();
			params.put("status", "결제대기중");
			params.put("no", member.getNo());
			model.addAttribute("item", coachingProgramService.findByMemberNo(params));
			return "myCoach/order/creditCard";
		} else {
			model.addAttribute("member", memberService.get(member.getNo()));
			Map<String, Object> params = new HashMap<>();
			params.put("status", "결제대기중");
			params.put("no", member.getNo());
			model.addAttribute("item", coachingProgramService.findByMemberNo(params));
			return "myCoach/order/kakaoPay";
		}
	}

	
	@PostMapping("payments/complete") // 신청내역
	public void complete(Model model) throws Exception {
	}
}
