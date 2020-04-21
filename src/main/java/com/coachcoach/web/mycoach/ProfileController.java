package com.coachcoach.web.mycoach;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/myCoach")
public class ProfileController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;


  @GetMapping("profileList") // 내프로필
  public void list() {}

  @GetMapping("applyList") // 신청내역
  public void applyList() {}

  @GetMapping("paymentList") // 결제내역
  public void paymentList() {}

  @GetMapping("mycoachList") // 마이코치
  public void mycoachList() {}

  @GetMapping("reviewForm") // 후기양식
  public void reviewForm() {}
}
