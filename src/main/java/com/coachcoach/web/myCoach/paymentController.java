package com.coachcoach.web.myCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mycoach/payment")
public class paymentController {

  @GetMapping("paymentList") // 결제내역
  public void paymentList() {}

}
