package com.coachcoach.web.auth;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/auth")
public class CoachFindIdController {

  @Autowired
  CoachService coachService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("coachfindidform")
  public void coachFindIdForm() {}

  @PostMapping("coachfindid")
  public void coachFindId() {}

}
