package com.coachcoach.web.myCoach;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.web.searchCoach.Criteria;
import com.coachcoach.web.searchCoach.PageMaker;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/pay")
public class PayController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  CoachingProgramService coachingProgramService;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("list") // 결제내역
  public void list(Model model, @ModelAttribute("cri") Criteria cri) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    Map<String, Object> param = new HashMap<>();
    param.put("no", member.getNo());
    param.put("status", "결제 완료");
    pageMaker.setTotalCount(memberCoachingProgramService.statusCount(param));

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    params.put("no", member.getNo());
    model.addAttribute("programList", memberCoachingProgramService.applyList(params));
    model.addAttribute("pageMaker", pageMaker);
  }


  @GetMapping("search")
  public void search(String sDate, String eDate, Model model ,@ModelAttribute("cri") Criteria cri) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    Map<String, Object> param = new HashMap<>();
    param.put("no", member.getNo());
    param.put("status", "결제 완료");
    param.put("sDate", sDate);
    param.put("eDate", eDate);
    pageMaker.setTotalCount(memberCoachingProgramService.statusDateCnt(param));

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    params.put("no", member.getNo());
    params.put("sDate", sDate);
    params.put("eDate", eDate);
    model.addAttribute("programList", memberCoachingProgramService.searchApplyList(params));
    model.addAttribute("pageMaker", pageMaker);
    model.addAttribute("sDate", sDate);
    model.addAttribute("eDate", eDate);

  }


}

