package com.coachcoach.web.coachPage;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.Coach;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.MemberCoachingProgramService;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/payment")
public class PaymentController {

  @Autowired
  HttpSession session;

  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;

  @Autowired
  CoachService coachService;

  @PostMapping("search")
  public void search(String date, String sDate, String eDate, Model model) throws Exception {
    if (date != null) {
      Calendar c;
      switch (date) {
        case "1week":
          c = Calendar.getInstance();
          c.add(Calendar.WEEK_OF_YEAR, -1);
          sDate = new Date(c.getTimeInMillis()).toString();
          break;
        case "1month":
          c = Calendar.getInstance();
          c.add(Calendar.MONTH, -1);
          sDate = new Date(c.getTimeInMillis()).toString();
          break;
        case "3month":
          c = Calendar.getInstance();
          c.add(Calendar.MONTH, -3);
          sDate = new Date(c.getTimeInMillis()).toString();
          break;
        case "6month":
          c = Calendar.getInstance();
          c.add(Calendar.MONTH, -6);
          sDate = new Date(c.getTimeInMillis()).toString();
          break;
      }
      eDate = new Date(System.currentTimeMillis()).toString();
    }
    Map<String, Object> params = new HashMap<>();
    params.put("sDate", sDate);
    params.put("eDate", eDate);
    params.put("no", ((Coach) session.getAttribute("loginUser")).getNo());
    model.addAttribute("list", memberCoachingProgramService.searchDate(params));
  }

  @GetMapping("list")
  public void list(Model model) throws Exception {
    Coach coach = (Coach) session.getAttribute("loginUser");
    model.addAttribute("list", memberCoachingProgramService.listByCoachNo(coach.getNo()));
  }

  @GetMapping("addForm")
  public void addForm(Model model) throws Exception {
    model.addAttribute("coach",
        coachService.get(((Coach) session.getAttribute("loginUser")).getNo()));
  }

  @PostMapping("add")
  public String add(Coach coach) throws Exception {
    coachService.updateBankAccount(coach);
    return "redirect:addForm";
  }



}
