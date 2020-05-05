package com.coachcoach.web.searchCoach;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/program")
public class SearchController {

	@Autowired
	HttpSession httpSession;

	@Autowired
	CoachingProgramService coachingProgramService;

	@Autowired
	CoachService coachService;

	@Autowired
	MemberCoachingProgramService memberCoachingProgramService;

	@Autowired
	MemberService memberService;

	@GetMapping("list") // 프로그램 페이지
	public void list(Model model, @ModelAttribute("cri") Criteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(coachingProgramService.pageCount());


		Map<String,Object> params = new HashMap<>();
		params.put("cri", cri);
		model.addAttribute("programList", coachingProgramService.pageList(params));
		model.addAttribute("pageMaker", pageMaker);
	}

	@GetMapping("searchKeyword") // 프로그램 검색
	public void searchKeyword(Model model, String keyword) throws Exception {
		model.addAttribute("searchProgram", coachingProgramService.search(keyword));
	}

	@GetMapping("searchDetail") // 조건으로 검색
	public void searchDetail(Model model, String gender, String coachingType) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("gender", gender);
		params.put("coachingType", coachingType);
		model.addAttribute("searchProgram", coachingProgramService.search(params));
	}

	@PostMapping("searchTag") // 태그로 검색
	public void searchTag(Model model, String tag) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("tag", tag);
		model.addAttribute("searchProgram", coachingProgramService.searchTag(params));
	}


	@GetMapping("detail") // 프로그램 상세보기
	public void detail(Model model, int programNo, int no) throws Exception {
		model.addAttribute("program", coachingProgramService.getProgram(programNo));
		model.addAttribute("memberProgram", memberCoachingProgramService.programList(programNo));

	}

	@PostMapping("applyForm") // 신청서
	public String applyForm(Model model, int programNo)  {
		try {
			Member member = (Member) httpSession.getAttribute("loginUser");
			model.addAttribute("member", memberService.get(member.getNo()));
			model.addAttribute("program", coachingProgramService.get(programNo));
			return "program/applyForm";
		} catch (Exception e) {
			return "redirect:error";		
		}
	}

	@PostMapping("applyList") // 확인
	public void applyList(Model model, MemberCoachingProgram memberCoachingProgram) throws Exception {
		memberCoachingProgramService.add(memberCoachingProgram);
		model.addAttribute("program", memberCoachingProgramService.get(memberCoachingProgram.getNo()));
	}

	@GetMapping("error") // 로그인페이지 이동
	public void error() throws Exception {
	}

	@PostMapping("deleteApply") // 신청취소
	public void deleteApply(Model model, int applyNo, int programNo) {
		try {
			memberCoachingProgramService.delete(applyNo);
			coachingProgramService.delete(programNo);
		} catch (Exception e) {

		}
	}

}
