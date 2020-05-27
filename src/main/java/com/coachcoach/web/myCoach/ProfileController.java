package com.coachcoach.web.myCoach;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.UUID;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.Member;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myCoach/profile")
public class ProfileController {
  @Autowired
  ServletContext servletContext;

  @Autowired
  HttpSession httpSession;

  @Autowired
  MemberService memberService;

  @GetMapping("delete")
  public String delete(Member member) throws Exception {
    member.setPhoto("images");
    memberService.update(member);
    return "redirect:form";
  }

  @GetMapping("form") // 내프로필
  public void form(Model model) throws Exception {
    Member member = (Member) httpSession.getAttribute("loginUser");
    model.addAttribute("member", memberService.get(member.getNo()));
  }

  @PostMapping("updateForm") // 프로필 사진 수정
  public String updateForm(Member member, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      BufferedImage croppedImage = getSquareImg(photoFile.getBytes());

      String dirPath = servletContext.getRealPath("/upload/member");
      String filename = UUID.randomUUID().toString();

      ImageIO.write(croppedImage, "jpg", new File(dirPath + "/" + filename));
      member.setPhoto(filename);
    }

    if (memberService.update(member) > 0) {
      httpSession.setAttribute("loginUser", memberService.get(member.getNo()));
      return "redirect:form";
    } else {
      throw new Exception("사진을 수정할 수 없습니다.");
    }
  }

  private static BufferedImage getSquareImg(byte[] originImg) throws Exception {
    InputStream in = new ByteArrayInputStream(originImg);
    BufferedImage origin = ImageIO.read(in);
    int width = origin.getWidth();
    int height = origin.getHeight();
    BufferedImage croppedImg = null;
    if (width >= height) {
      croppedImg = origin.getSubimage(width / 2 - height / 2, 0, height, height);
    } else {
      croppedImg = origin.getSubimage(0, 0, width, width);
    }
    return croppedImg;
  }
}
