package com.coachcoach.web.coachPage;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/coachpage/requestReceived")
public class RequestReceivedController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  CoachService coachService;

  @GetMapping("form")
  public void form() {}

  @GetMapping("list")
  public void list() {}


}
