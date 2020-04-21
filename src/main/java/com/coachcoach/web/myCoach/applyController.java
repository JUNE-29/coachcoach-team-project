package com.coachcoach.web.myCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mycoach/apply")
public class applyController {

  @GetMapping("list") // 신청내역
  public void applyList() {}

  @GetMapping("rejectForm") // 거절사유
  public void rejectForm() {}


}
