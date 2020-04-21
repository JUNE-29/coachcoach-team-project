package com.coachcoach.web.searchCoach;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/searchCoach")
public class searchController {


  @GetMapping("search") // 코치검색 페이지
  public void list() {}

  @GetMapping("detail") // 코치 상세보기
  public void detail() {}

  @GetMapping("applyForm") // 신청서
  public void applyForm() {}

  @GetMapping("applyDetail") // 신청서 확인
  public void applyDetail() {}


}
