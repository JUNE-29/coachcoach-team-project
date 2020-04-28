package com.coachcoach.web.auth;

import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.Coach;
import com.coachcoach.service.CoachService;

@Controller
@RequestMapping("/auth/coach")
public class CoachAuthController {
  @Autowired
  CoachService coachService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void coachForm() {} // 로그인폼

  @PostMapping("login")
  public String coachLogin(String id, String password, String saveId, HttpServletResponse response,
      HttpSession session, Model model) throws Exception {

    Cookie cookie = new Cookie("id", id);
    if (saveId != null) {
      cookie.setMaxAge(60 * 60 * 24 * 30);
    } else {
      cookie.setMaxAge(0);
    }
    response.addCookie(cookie);

    Coach coach = coachService.get(id, password);
    if (coach != null) {
      session.setAttribute("loginUser", coach);
      return "redirect:../../coachPage/requestReceived/list";
    } else {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    }

    return "auth/coach/login";

  } // 로그인 후


  @GetMapping("findidform")
  public void coachFindIdForm() {} // 코치아이디찾기 폼

  @PostMapping("findid")
  public void coachFindId() {} // 코치 아이디 후

  @GetMapping("findpasswordform")
  public void coachFindPasswordForm() {} // 코치 패스워드 찾기 폼

  @PostMapping("findpassword")
  public void coachFindPassword() {} // 코치 패스워드 찾기

  @GetMapping("addform")
  public void coachaddform() {} // 코치 회원가입 폼

  @PostMapping("add")
  public void coachadd(Coach coach, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/member");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      coach.setPhoto(filename);
    }

    if (coachService.add(coach) > 0) {
      // return "redirect:../login";
    } else {
      throw new Exception("코치 가입을 할 수 없습니다.");
    }
  } // 코치 회원가입


}
