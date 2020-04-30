package com.coachcoach.web.myCoach;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coachcoach.domain.Member;
import com.coachcoach.service.CoachingProgramService;

@Controller
@RequestMapping("/myCoach/apply")
public class ApplyController {

	@Autowired
	HttpSession httpSession;

	@Autowired
	CoachingProgramService coachingProgramService;

	@GetMapping("list") // 신청내역
	public void applyList(Model model) throws Exception {
		Member member = (Member) httpSession.getAttribute("loginUser");
		model.addAttribute("programList", coachingProgramService.applyList(member.getNo()));
	}

	@GetMapping("rejectForm") // 거절사유
	public void rejectForm() {}


}
