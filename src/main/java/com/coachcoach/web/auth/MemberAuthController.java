package com.coachcoach.web.auth;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/auth/member")
public class MemberAuthController {

  @Autowired
  MemberService memberService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void memberForm() {}

  @PostMapping("login")
  public String memberLogin(String id, String password, String saveId, HttpServletResponse response,
      HttpSession session, Model model) throws Exception {

    Cookie cookie = new Cookie("id", id);
    if (saveId != null) {
      cookie.setMaxAge(60 * 60 * 24 * 30);
    } else {
      cookie.setMaxAge(0);
    }
    response.addCookie(cookie);

    Member member = memberService.get(id, password);
    if (member != null) {
      session.setAttribute("loginUser", member);
      model.addAttribute("refreshUrl", "2;url=../../index.jsp");
    } else {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    }

    return "auth/member/login";
  }


  @GetMapping("findidform")
  public void memberFindIdForm() {}

  @PostMapping("findid")
  public void memberFindId() {}

  @GetMapping("findpasswordform")
  public void memberFindPasswordForm() {}

  @PostMapping("findpassword")
  public void memberFindPassword() {}

  @GetMapping("addform")
  public void memberAddForm() {} // 회원가입폼

  @PostMapping("add")
  public void memberAdd(Member member, MultipartFile photoFile, String tel1, String tel2,
      String tel3) throws Exception {

    String tel = tel1 + tel2 + tel3;
    member.setTel(tel);

    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/member");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      member.setPhoto(filename);
    }

    if (memberService.add(member) > 0) {
      // return "redirect:list";
    } else {
      throw new Exception("회원 가입을 할 수 없습니다.");
    }

  } // 회원가입

  @GetMapping("idCheckForm")
  public void memberIdCheck() {

  }

  @PostMapping("idCheckPro")

  @RequestMapping("idcheck")
  public Map<Object, Object> idcheck(@RequestBody String userid) throws Exception {

    System.out.println("여기");

    int count = 0;
    Map<Object, Object> map = new HashMap<Object, Object>();

    count = memberService.idcheck(userid);
    map.put("cnt", count);

    return map;
  }
}

