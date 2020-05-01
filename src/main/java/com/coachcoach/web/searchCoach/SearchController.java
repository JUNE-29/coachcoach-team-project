package com.coachcoach.web.searchCoach;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
  public void list(Model model) throws Exception {
    model.addAttribute("programList", coachingProgramService.list());
  }

  @GetMapping("search") // 프로그램 검색
  public void search(Model model, String keyword) throws Exception {
    model.addAttribute("searchProgram", coachingProgramService.search(keyword));
  }

  @GetMapping("detail") // 프로그램 상세보기
  public void detail(Model model, int programNo, int no) throws Exception {
    model.addAttribute("program", coachingProgramService.get(programNo));
    model.addAttribute("memberProgram", memberCoachingProgramService.programList(programNo));

  }

  @PostMapping("applyForm") // 신청서
  public void applyForm(Model model, int programNo) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
    model.addAttribute("program", coachingProgramService.get(programNo));
  }

  @PostMapping("applyList") // 확인
  public void applyList(Model model, MemberCoachingProgram memberCoachingProgram) throws Exception {
    memberCoachingProgramService.add(memberCoachingProgram);
    model.addAttribute("program", memberCoachingProgramService.get(memberCoachingProgram.getNo()));
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
