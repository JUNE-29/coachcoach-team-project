package com.coachcoach.web.searchCoach;


import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
    model.addAttribute("programList", coachingProgramService.get(programNo));
    List<MemberCoachingProgram> memberProgram =
        memberCoachingProgramService.programNolist(programNo);
    model.addAttribute("memberProgram", memberProgram);

  }

  @PostMapping("applyForm") // 신청서
  public void applyForm(Model model, int no) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
    model.addAttribute("program", coachingProgramService.get(no));
  }

  @PostMapping("applyList") // 확인
  public void applyList(Model model, MemberCoachingProgram memberCoachingProgram,
      @DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate1,
      @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate1) throws Exception {
    memberCoachingProgram.setStartDate(startDate1);
    memberCoachingProgram.setEndDate(endDate1);
    memberCoachingProgramService.add(memberCoachingProgram);
    model.addAttribute("program", memberCoachingProgramService.get(memberCoachingProgram.getNo()));
    model.addAttribute("member", memberService.get(memberCoachingProgram.getMemberNo()));
  }


}
