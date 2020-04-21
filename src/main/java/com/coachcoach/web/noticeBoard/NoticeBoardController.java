package com.coachcoach.web.noticeBoard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/serviceCenter/noticeBoard")
public class NoticeBoardController {

  @PostMapping("add")
  public String add() {
  return "redirect:list";}

  @GetMapping("list")
  public void list() {}

  @GetMapping("detail")
  public void detail() {}

  @GetMapping("form")
  public void form() {}

  @PostMapping("update")
  public void update() {}

  @GetMapping("updateForm")
  public void updateForm() {}


}
