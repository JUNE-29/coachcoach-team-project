package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/dietDiary")
public class DietDiaryController {

  @GetMapping("list")
  public void list() {}

  @GetMapping("detail")
  public void detail() {}



  @GetMapping("form")
  public void form() {}

  @PostMapping("add")
  public void add() {}



  @GetMapping("updateForm")
  public void updateForm() {}

  @PostMapping("update")
  public void update() {}



  @GetMapping("delete")
  public void delete() {}
}
