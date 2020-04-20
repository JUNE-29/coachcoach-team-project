package com.coachcoach.web;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/signup")
public class SignUpController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;

  @GetMapping("form")
  public void form() {}

  // @PostMapping("add")
  // public String add(Member member, MultipartFile photoFile) throws Exception {
  //
  // if (photoFile.getSize() > 0) {
  // String dirPath = servletContext.getRealPath("/upload/member");
  // String filename = UUID.randomUUID().toString();
  // photoFile.transferTo(new File(dirPath + "/" + filename));
  // member.setPhoto(filename);
  // }
  //
  // if (memberService.add(member) > 0) {
  // return "redirect:list";
  // } else {
  // throw new Exception("회원을 추가할 수 없습니다.");
  // }
  // }
}
