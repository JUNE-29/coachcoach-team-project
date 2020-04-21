package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/coaching")
public class CoachingController {
  @GetMapping("list") // detailData 페이지
  public void list() {}

  @GetMapping("detail")
  public void detail() {}

  // 회원, 코치 둘다 접근 가능 ^^^^^^


  // 코치만 접근 가능 VVVVVV

  @GetMapping("addForm") // 운동 코칭 적음
  public void addForm() {}

  @PostMapping("add")
  public void add() {}

  @GetMapping("updateForm") // 운동 코칭 수정
  public void updateForm() {}

  @PostMapping("update")
  public void update() {}

  @GetMapping("delete")
  public void delete() {}

}
