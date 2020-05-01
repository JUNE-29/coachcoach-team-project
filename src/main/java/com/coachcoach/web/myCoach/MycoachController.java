package com.coachcoach.web.myCoach;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Member;

@Controller
@RequestMapping("/myCoach/program")
public class MycoachController {

  @Autowired
  HttpSession httpSession;



  @GetMapping("list") // 마이코치
  public void mycoachList() {
    Member member = (Member) httpSession.getAttribute("loginUser");

  }

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
