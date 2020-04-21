package com.coachcoach.web.myCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mycoach/mycoach")
public class mycoachController {

  @GetMapping("list") // 마이코치
  public void mycoachList() {}

  @GetMapping("coachDetail") // 코치 상세보기
  public void coachDetail() {}

  @GetMapping("programDetail") // 프로그램 상세보기
  public void programDetail() {}

  @GetMapping("reviewForm") // 후기양식
  public void reviewForm() {}

  @PostMapping("reviewUpdate") // 후기등록완료
  public void addReview() {

  }
}
