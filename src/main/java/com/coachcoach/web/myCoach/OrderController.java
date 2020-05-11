package com.coachcoach.web.myCoach;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberCoachingProgramService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/order")
public class OrderController {

  @Autowired
  HttpSession httpSession;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("paySuccess") // 결제성공
  public void paySuccess(Model model, String no, String msg) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("memberCoachingProgramNo", no);
    params.put("status", "결제 완료");
    memberCoachingProgramService.updatePaydate(params);
    model.addAttribute("msg", msg);
  }
}
