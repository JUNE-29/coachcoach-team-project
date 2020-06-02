package com.coachcoach.web.myPage;

import java.io.File;
import java.util.UUID;
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
import com.coachcoach.domain.FoodBoard;
import com.coachcoach.domain.FoodBoardComment;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.CoachService;
import com.coachcoach.service.FoodBoardCommentService;
import com.coachcoach.service.FoodBoardService;
import com.coachcoach.service.MemberCoachingProgramService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("/myPage/dietDiary")
public class DietDiaryController {

  @Autowired
  FoodBoardService foodBoardService;
  @Autowired
  FoodBoardCommentService foodBoardCommentService;
  @Autowired
  CoachService coachService;
  @Autowired
  MemberCoachingProgramService memberCoachingProgramService;


  @Autowired
  ServletContext servletContext;

  @Autowired
  HttpSession session;


  @PostMapping("add")
  public String add(FoodBoard foodBoard, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/foodBoard");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      foodBoard.setPhotoFilePath(filename);
    }

    if (foodBoardService.add(foodBoard) > 0) {
    } else {
      throw new Exception("게시물을 추가할 수 없습니다.");
    }
    return "redirect:list";
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @PostMapping("comment/add")
  public String addComment(FoodBoardComment foodBoardComment) throws Exception {
    foodBoardCommentService.add(foodBoardComment);
    return "redirect:../detail?no=" + foodBoardComment.getFoodBoardNo();
  }



  @GetMapping("addForm")
  public void addForm(Model model) {
    model.addAttribute("member", session.getAttribute("loginUser"));
  }

  @PostMapping("delete")
  public String delete(int no) throws Exception {
    foodBoardService.delete(no);
    return "redirect:list";
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @PostMapping("comment/delete")
  public String deleteComment(int no, int foodBoardNo) throws Exception {
    foodBoardCommentService.delete(no);
    return "redirect:../detail?no=" + foodBoardNo;
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    model.addAttribute("foodBoard", foodBoardService.get(no));
    model.addAttribute("foodBoardComments", foodBoardCommentService.list(no));
  }

  @Auth(role = {Role.COACH, Role.MEMBER})
  @GetMapping("list")
  public void list(Model model) throws Exception {
    if (session.getAttribute("loginUser") instanceof Member) {
      model.addAttribute("list",
          foodBoardService.list(((Member) session.getAttribute("loginUser")).getNo()));
    } else if (session.getAttribute("loginUser") instanceof Coach) {
      MemberCoachingProgram memberCoachingProgram =
          memberCoachingProgramService.get((int) session.getAttribute("memberCoachingProgramNo"));
      model.addAttribute("list", foodBoardService.list(memberCoachingProgram.getMemberNo()));
    }
  }

  @PostMapping("update")
  public void update(FoodBoard foodBoard, MultipartFile photoFile) throws Exception {
    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/foodBoard");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      foodBoard.setPhotoFilePath(filename);
    }

    if (foodBoardService.update(foodBoard) > 0) {
    } else {
      throw new Exception("게시물을 수정할 수 없습니다.");
    }
  }

  @PostMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("foodBoard", foodBoardService.get(no));
    model.addAttribute("member", session.getAttribute("loginUser"));
  }

}
