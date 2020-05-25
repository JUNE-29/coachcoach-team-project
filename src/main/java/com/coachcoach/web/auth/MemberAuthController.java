package com.coachcoach.web.auth;

import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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


    Member member = memberService.get(id, password);

    // System.out.println(member.getAuthStatus());

    if (member.getAuthStatus() == 1) {
      Cookie cookie = new Cookie("id", id);
      if (saveId != null) {
        cookie.setMaxAge(60 * 60 * 24 * 30);
      } else {
        cookie.setMaxAge(0);
      }
      response.addCookie(cookie);

      session.setAttribute("loginUser", member);
      // model.addAttribute("refreshUrl", "2;url=../../../index.jsp");
      return "redirect:../../../index.jsp";
    } else if (member.getAuthStatus() == 0) {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    } else {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    }

    //
    // else {
    // session.invalidate();
    // model.addAttribute("refreshUrl", "2;url=form");
    // }

    return "auth/member/login";
  }


  @GetMapping("findidform")
  public void memberFindIdForm() {} // 아이디찾기폼

  @PostMapping("findid")
  public void memberFindId() {}

  @GetMapping("findpasswordform")
  public void memberFindPasswordForm() {} // 패스워드찾기폼

  @PostMapping("findpassword")
  public void memberFindPassword() {}

  @GetMapping("addform")
  public void memberAddForm() {} // 회원가입폼

  @PostMapping("add")
  public String memberAdd(Member member, MultipartFile photoFile, String tel1, String tel2,
      String tel3) throws Exception {

    String tel = tel1 + tel2 + tel3;
    member.setTel(tel);

    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/member");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      member.setPhoto(filename);
    }

    // if (memberService.add(member) > 0) {
    // // return "redirect:list";
    // } else {
    // throw new Exception("회원 가입을 할 수 없습니다.");
    // }

    memberService.add(member);
    return "auth/member/add";

  } // 회원가입

  @GetMapping("idCheckForm")
  public void memberIdCheck() {

  }

  // 아이디 중복체크 (회원가입)
  @ResponseBody
  @RequestMapping(value = "idcheck", method = RequestMethod.POST)
  public int idcheck(String userid) throws Exception {
    System.out.println(userid);
    int count = memberService.idcheck(userid);
    System.out.println(count);
    return count;
  }

  // 회원가입 후 권한 업데이트
  @RequestMapping(value = "joinConfirm", method = RequestMethod.GET)
  public void emailConfirm(Member member, Model model) throws Exception {
    System.out.println(member.getEmail() + ": auth confirmed");
    memberService.updateAuthStatus(member); // 권한 업데이트
    model.addAttribute("auth_check", 1);
  }

  // 아이디 찾기
  @ResponseBody
  @RequestMapping(value = "searchid", method = RequestMethod.POST)
  public String searchid(@RequestParam String userName, @RequestParam String userEmail)
      throws Exception {
    System.out.println(userName);
    System.out.println(userEmail);
    String result = memberService.getSerchId(userName, userEmail);
    return result;
  }

  // 비밀번호 찾기
  @RequestMapping(value = "searchPassword", method = RequestMethod.POST)
  @ResponseBody
  public String searchPassword(String userId, String userEmail, HttpServletRequest request)
      throws Exception {

    System.out.println(userId);
    memberService.mailSendWithPassword(userId, userEmail, request);

    return "findpassword";
  }
}

