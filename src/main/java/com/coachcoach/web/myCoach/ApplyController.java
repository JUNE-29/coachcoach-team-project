package com.coachcoach.web.myCoach;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachingProgramService;
import com.coachcoach.service.MemberCoachingProgramService;
import com.coachcoach.service.MemberService;
import com.coachcoach.web.searchCoach.Criteria;
import com.coachcoach.web.searchCoach.PageMaker;
import com.google.gson.Gson;

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

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("list") // 신청내역
  public void applyList(Model model, @ModelAttribute("cri") Criteria cri) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");

    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    pageMaker.setTotalCount(memberCoachingProgramService.applyCount(member.getNo()));

    Map<String, Object> params = new HashMap<>();
    params.put("cri", cri);
    params.put("no", member.getNo());
    model.addAttribute("programList", memberCoachingProgramService.applyList(params));
    model.addAttribute("pageMaker", pageMaker);

    List<MemberCoachingProgram> list = memberCoachingProgramService.applyList(params);
    for (int i = 0; i < list.size(); i++) {
      System.out.println(list);
    }

  }

  @ResponseBody // 거절사유
  @RequestMapping(value = "rejectForm", method = RequestMethod.POST)
  public void rejectForm(Model model, int no, HttpServletResponse response) throws Exception {
    MemberCoachingProgram memberCoachingProgram = memberCoachingProgramService.get(no);
    Gson json = new Gson();
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(json.toJson(memberCoachingProgram));
    out.flush();
  }

  @GetMapping("orderForm") // 결제
  public void orderForm(Model model, int no) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));

    Map<String, Object> params = new HashMap<>();
    params.put("status", "결제대기중");
    params.put("no", no);
    httpSession.setAttribute("item", coachingProgramService.findByOrderNo(params));
  }


  @GetMapping("payments") // 결제
  public String payments(Model model, String payment) throws Exception {
    if (payment.equals("creditCard")) {
      return "myCoach/order/creditCard";
    } else {
      return "myCoach/order/kakaoPay";
    }
  }

  @ResponseBody
  @Auth(role = Role.MEMBER)
  @PostMapping("delete") // 신청취소
  public int delete(Model model, int applyNo) throws Exception {
    return memberCoachingProgramService.delete(applyNo);
  }


  @PostMapping("payments/complete") // 신청내역
  public void complete(Model model) throws Exception {}
}
