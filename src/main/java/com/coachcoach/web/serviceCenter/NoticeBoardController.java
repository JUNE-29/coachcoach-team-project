package com.coachcoach.web.serviceCenter;

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

  @GetMapping("addForm")
  public void addForm() {}


  @GetMapping("form")
  public void form() {}

  @GetMapping("list")
  public void list() {}

  @GetMapping("detail")
  public void detail() {}

  @GetMapping("delete")
  public void delete() {

  }

  @PostMapping("update")
  public void update() {}

  @GetMapping("updateForm")
  public void updateForm() {}


}
