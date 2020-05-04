package com.coachcoach.web.coachPage;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.coachcoach.domain.Coach;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/modify")
public class CoachModifyController {

  @Autowired
  CoachService coachService;

  @Autowired
  ServletContext servletContext;

  @Autowired
  HttpSession httpSession;

  @GetMapping("checkPasswordForm")
  public void checkPasswordForm() throws Exception {}

  @PostMapping("checkPassword") // 비밀번호 재확인
  public String withdrawForm(HttpSession session, String password) throws Exception {
    Coach coach = (Coach) session.getAttribute("loginUser");
    if (coachService.get(coach.getId(), password) != null) {
      return "redirect:form";
    }
    return "redirect:checkPasswordForm"; // 틀렸을시.
  }

  @GetMapping("form") // 회원정보 수정
  public void form(Model model) throws Exception {
    Coach coach = (Coach) httpSession.getAttribute("loginUser");
    model.addAttribute("coach", coachService.get(coach.getNo()));
  }

  @PostMapping("modify")
  public void modify(Coach coach, @RequestParam("updatePassword") String[] updatePassword)
      throws Exception {
    if (updatePassword[0].equals(updatePassword[1])) {
      coach.setPassword(updatePassword[0]);
      coachService.update(coach);
    }
  }

  @GetMapping("withdrawalForm") // 회원탈퇴
  public void withdrawalReason() throws Exception {}

  @PostMapping("withdraw") // 회원탈퇴
  public void withdraw(HttpSession session, String withdrawalReason) throws Exception {
    Map<String, Object> params = new HashMap<>();
    params.put("no", ((Coach) session.getAttribute("loginUser")).getNo());
    params.put("withdrawalReason", withdrawalReason);
    params.put("withdrawal", 0); // 0이면 탈퇴, 1이면 아님
    coachService.updateWithdrawal(params);
    session.invalidate();
  }
}
