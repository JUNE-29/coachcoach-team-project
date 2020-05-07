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
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/program")
public class MycoachController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  CoachingProgramService coachingProgramService;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;


  @GetMapping("list") // 마이코치
  public void mycoachList(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("programList", coachingProgramService.applyList(member.getNo()));

    Map<String, Object> params = new HashMap<>();
    params.put("status", "진행중");
    params.put("no", member.getNo());
    model.addAttribute("program", coachingProgramService.findByMemberNo(params));
  }

  @GetMapping("coachDetail") // 코치 상세보기
  public void coachDetail() {}

  @GetMapping("programDetail") // 프로그램 상세보기
  public void programDetail() {}

  @GetMapping("reviewForm") // 후기양식
  public void reviewForm(Model model, int no) {
    model.addAttribute("no", no);
  }

  @PostMapping("reviewUpdate") // 후기등록완료
  public void reviewUpdate(Model model, int no, String review) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("memberCoachingProgramNo", no);
    params.put("review", review);
    memberCoachingProgramService.updateReview(params);
  }
}
