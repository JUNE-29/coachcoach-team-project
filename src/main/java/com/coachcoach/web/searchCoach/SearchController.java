package com.coachcoach.web.searchCoach;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.CoachingProgramService;

@Controller
@RequestMapping("/program")
public class SearchController {

	@Autowired
	HttpSession httpSession;

	@Autowired
	CoachingProgramService coachingProgramService;

	@Autowired
	CoachService coachService;

	@GetMapping("list") // 코치검색 페이지
	public void list(Model model) throws Exception {
		model.addAttribute("programList", coachingProgramService.list());
	}

	@GetMapping("search") // 코치 상세보기
	public void search(String keyword, Model model) throws Exception {
		model.addAttribute("searchCoaches", coachingProgramService.search(keyword));
	}

	@GetMapping("detail") // 코치 상세보기
	public void detail(int programNo, int no, Model model) throws Exception {
		model.addAttribute("programList",coachingProgramService.list(no));
	}

	@PostMapping("applyForm") // 신청서
	public void applyForm() {}

	@GetMapping("updateForm") // 신청서 수정
	public void updateForm() {}

	@PostMapping("detailForm") // 신청서 확인
	public void applyDetail() {}

	@GetMapping("apply") // 신청서 수정
	public void apply() {}

	@PostMapping("update") // 신청서 수정
	public void update() {}

}
