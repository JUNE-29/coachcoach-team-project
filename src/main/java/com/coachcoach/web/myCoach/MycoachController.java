package com.coachcoach.web.myCoach;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
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
  CoachService coachService;

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

  @ResponseBody // 코치 상세보기
  @RequestMapping(value = "coachDetail", method = RequestMethod.POST)
  public String coachDetail(Model model, int no) throws Exception {
    model.addAttribute("coach", coachService.get(no));
    return "list.jsp";
  }

  @GetMapping("programDetail") // 프로그램 상세보기
  public void programDetail() {}

  @GetMapping("reviewForm")
  public void reviewForm(Model model, int no) {
    model.addAttribute("no", no);
  }


  @ResponseBody // 리뷰 등록
  @RequestMapping(value = "reviewUpdate", method = RequestMethod.POST)
  public String reviewUpdate(Model model, int no, String review, int starRate) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("starRate", starRate);
    params.put("memberCoachingProgramNo", no);
    params.put("review", review);
    memberCoachingProgramService.updateReview(params);
    return "myCoach/program/list";
  }
}
