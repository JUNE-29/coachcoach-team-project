package com.coachcoach.web.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage/dashBoard")
public class DashBoardController {

  @GetMapping("list")
  public void list() {}

  @PostMapping("toDoListAdd")
  public void toDoListAdd() {}

  @GetMapping("toDoListAddForm")
  public void toDoListAddForm() {}

  @GetMapping("toDoListDelete")
  public String toDoListDelete() {
    return "redirect:list";
  }


}
