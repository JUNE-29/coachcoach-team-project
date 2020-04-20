package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/detailData")
public class DetailDataController {
  @GetMapping("list")
  public void list() {}

  @GetMapping("add")
  public void add() {}

  @GetMapping("update")
  public void update() {}

  @GetMapping("delete")
  public void delete() {}
}
