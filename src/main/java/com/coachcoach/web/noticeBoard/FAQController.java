package com.coachcoach.web.noticeBoard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/serviceCenter/FAQ")
public class FAQController {

  @GetMapping("list")
  public void list() {}


}
