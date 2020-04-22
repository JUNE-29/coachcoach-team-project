package com.coachcoach.web.myCoach;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach/profile")
public class ProfileController {

  @Autowired
  MemberService memberService;

  @Autowired
  HttpSession httpSession;

  @GetMapping("list") // 내프로필
  public void list(int no, Model model) throws Exception {
    model.addAttribute("member", memberService.get(no));
  }


}
