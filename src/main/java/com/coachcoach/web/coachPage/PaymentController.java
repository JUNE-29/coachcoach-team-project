package com.coachcoach.web.coachPage;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/coachpage/payment")
public class PaymentController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  CoachService coachService;

  @GetMapping("addForm")
  public void addForm() {}

  @PostMapping("add")
  public void add() {}

  @GetMapping("delete")
  public void delete() {}

  @GetMapping("list")
  public void list() {}


}
