package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/detailData")
public class DetailDataController {
  @GetMapping("list") // detailData 페이지
  public void list() {}

  @GetMapping("addForm") // 날짜, 운동, 몸무게, 걸음수 등 기입
  public void addForm() {}

  @PostMapping("add")
  public void add() {}

  @GetMapping("updateForm") // 날짜, 운동, 몸무게, 걸음수 등 수정
  public void updateForm() {}

  @PostMapping("update")
  public void update() {}

  @GetMapping("delete")
  public void delete() {}
}
