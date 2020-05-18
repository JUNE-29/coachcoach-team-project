package com.coachcoach.web.myPage;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberService;
import com.coachcoach.service.MemberWorkoutService;

@Auth(role = {Role.MEMBER})
@Controller
@RequestMapping("/myPage/detailData")
public class DetailDataController {

  @Autowired
  ServletContext servletContext;
  @Autowired
  HttpSession httpSession;
  @Autowired
  MemberWorkoutService memberWorkoutService;
  @Autowired
  MemberService memberService;

  @Autowired

  // memberWorkout 페이지

  // @PostMapping("addForm")
  // public String add(MemberWorkout memberWorkout, @RequestParam("tags") int[] tags)
  // throws Exception {
  // List<WorkoutUnit> selectedTags = new ArrayList<>();
  // for (int i : tags) {
  // selectedTags.add(new WorkoutUnit().setWorkoutUnitNo(i));
  // }
  // memberWorkout.setWorkoutUnit(selectedTags);
  // if (memberWorkoutService.add(memberWorkout) > 0) {
  // workoutUnitService.add(memberWorkout);
  // return "redirect:list";
  // } else {
  // throw new Exception("프로그램을 추가할 수 없습니다.");
  // }
  // }
  //
  //
  // @GetMapping("list")
  // public void list(Model model) throws Exception {
  // Member member = (Member) httpSession.getAttribute("loginUser");
  // model.addAttribute("list", memberWorkoutService.list(member.getNo()));
  // model.addAttribute("memberNo", member.getNo());
  // }

  @PostMapping("addForm")
  public void add() throws Exception {}

  @GetMapping("list")
  public void list() throws Exception {}


}
