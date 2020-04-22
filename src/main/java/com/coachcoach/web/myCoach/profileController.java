package com.coachcoach.web.myCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mycoach/profile")
public class profileController {


  @GetMapping("list") // 내프로필
  public void list() {}


}
