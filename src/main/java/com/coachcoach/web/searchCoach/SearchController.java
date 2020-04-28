package com.coachcoach.web.searchCoach;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
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
    model.addAttribute("programList", coachingProgramService.get(programNo));
    model.addAttribute("memberProgram", memberCoachingProgramService.programNolist(programNo));
  }

  @PostMapping("applyForm") // 신청서
  public void applyForm(Model model, int no) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
    model.addAttribute("program", coachingProgramService.get(no));
  }

  @GetMapping("updateForm") // 신청서 수정
  public void updateForm() {}

  @PostMapping("detailForm") // 신청서 확인
  public void applyDetail() {}

  @GetMapping("apply") // 신청서 수정
  public void apply() {}

  @PostMapping("update") // 신청서 수정
  public void update() {}

}
