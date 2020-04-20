package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/coaching")
public class CoachingController {
  @GetMapping("list")
  public void list() {}

}
