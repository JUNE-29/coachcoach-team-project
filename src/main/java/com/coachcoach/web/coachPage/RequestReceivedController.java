package com.coachcoach.web.coachPage;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberCoachingProgramService;

@Controller
@RequestMapping("/coachPage/requestReceived")
public class RequestReceivedController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @GetMapping("list")
  public void list(int coachNo, Model model) throws Exception {
    model.addAttribute("list", memberCoachingProgramService.RequestList(coachNo));
  }

  @GetMapping("detail") // memberCoachingProgramNo 받아서 요청서 보는 데에 씀
  public void detail(int no, Model model) throws Exception {
    model.addAttribute("detail", memberCoachingProgramService.get(no));
  }

  @PostMapping("reject")
  public void reject() throws Exception {}

  @GetMapping("rejectForm")
  public void rejectForm() throws Exception {}

  @GetMapping("accept")
  public void accept() throws Exception {}


}
