package com.coachcoach.web.coachPage;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberCoachingProgramService;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/requestReceived")
public class RequestReceivedController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @Auth(role = Role.COACH)
  @GetMapping("list")
  public void list(HttpSession session, Model model) throws Exception {
    model.addAttribute("list", memberCoachingProgramService
        .RequestList(((Coach) session.getAttribute("loginUser")).getNo()));
  }

  @Auth(role = Role.COACH)
  @GetMapping("detail") // memberCoachingProgramNo 받아서 요청서 보는 데에 씀
  public void detail(int no, Model model) throws Exception {
    model.addAttribute("detail", memberCoachingProgramService.get(no));
  }

  @Auth(role = Role.COACH)
  @PostMapping("reject")
  public void reject(int memberCoachingProgramNo, String content) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("memberCoachingProgramNo", memberCoachingProgramNo);
    params.put("etc", content);
    memberCoachingProgramService.updateEtc(params);
  }

  @Auth(role = Role.COACH)
  @PostMapping("rejectForm")
  public void rejectForm(int memberCoachingProgramNo, Model model) throws Exception {
    model.addAttribute("memberCoachingProgram",
        memberCoachingProgramService.get(memberCoachingProgramNo));
  }

  @Auth(role = Role.COACH)
  @PostMapping("accept")
  public void accept(int memberCoachingProgramNo) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("memberCoachingProgramNo", memberCoachingProgramNo);
    params.put("status", "결제대기중");
    memberCoachingProgramService.updateStatus(params);
  }


}
