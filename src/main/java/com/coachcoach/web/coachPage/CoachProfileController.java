package com.coachcoach.web.coachPage;

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
import com.coachcoach.domain.Coach;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;

@Auth(role = Role.COACH)
@Controller
@RequestMapping("/coachPage/profile")
public class CoachProfileController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  CoachService coachService;

  @Autowired
  HttpSession session;

  @PostMapping("update")
  public String update(Coach coach, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      BufferedImage croppedImage = getSquareImg(photoFile.getBytes());

      String dirPath = servletContext.getRealPath("/upload/coach");
      String filename = UUID.randomUUID().toString();

      ImageIO.write(croppedImage, "jpg", new File(dirPath + "/" + filename));
      coach.setPhoto(filename);
    } else {
      coach.setPhoto("");
    }

    if (coachService.updateProfile(coach) > 0) {
    } else {
      throw new Exception("프로필 업데이트 실패");
    }
    session.setAttribute("loginUser", coachService.get(coach.getNo()));
    return "redirect:detail";
  }

  @GetMapping("form")
  public void form(HttpSession httpSession, Model model) throws Exception {
    int coachNo = ((Coach) httpSession.getAttribute("loginUser")).getNo();
    Coach coach = coachService.get(coachNo);
    model.addAttribute("coach", coach);
  }

  @GetMapping("detail")
  public void detail(HttpSession httpSession, Model model) throws Exception {
    int coachNo = ((Coach) httpSession.getAttribute("loginUser")).getNo();
    Coach coach = coachService.get(coachNo);
    coach.setCareer(coach.getCareer().replace("\n", "<br>"));
    coach.setCertification(coach.getCertification().replace("\n", "<br>"));
    coach.setIntroduce(coach.getIntroduce().replace("\n", "<br>"));
    model.addAttribute("coach", coach);
    model.addAttribute("coach2", coachService.get(coachNo));
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
