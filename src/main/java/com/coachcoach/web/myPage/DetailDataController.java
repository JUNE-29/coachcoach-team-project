package com.coachcoach.web.myPage;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.coachcoach.domain.Member;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.domain.WorkoutUnit;
import com.coachcoach.interceptor.Auth;
import com.coachcoach.interceptor.Auth.Role;
import com.coachcoach.service.MemberService;
import com.coachcoach.service.MemberWorkoutService;
import com.coachcoach.service.WorkoutUnitService;

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
  WorkoutUnitService workoutUnitService;
  @Autowired
  MemberService memberService;


  // memberWorkout 페이지

  @GetMapping("memberWorkoutAddForm") // 날짜, 운동, 걸음수 등 기입
  public void addForm(Model model) throws Exception {
    int memberNo = ((Member) httpSession.getAttribute("loginUser")).getNo();
    List<WorkoutUnit> list = workoutUnitService.list(); // 공통으로 넘길거라 값을 주지 않아도 된다.
    model.addAttribute("memberNo", memberNo);
    model.addAttribute("list", list);
  }


  @PostMapping("memberWorkoutAdd")
  public String memberWorkoutAdd(MemberWorkout memberWorkout,
      @RequestParam("workoutNo") int[] workoutNoList, @RequestParam("unit") int[] unitList)
      throws Exception {
    System.out.println(memberWorkout + "확인!");

    ArrayList<WorkoutUnit> list = new ArrayList<>();
    for (int i = 0; i < workoutNoList.length; i++) {
      WorkoutUnit workoutUnit = new WorkoutUnit();
      workoutUnit.setWorkoutNo(workoutNoList[i]); // workoutUni의 값들을 배열로 받기위한 작업
      workoutUnit.setUnit(String.valueOf(unitList[i])); // String을 int로
      list.add(workoutUnit);
    }
    memberWorkout.setWorkoutUnit(list);
    System.out.println(memberWorkout + "확인");

    memberWorkoutService.add(memberWorkout);
    return "redirect:memberWorkoutlist";
  }


  // // 전체 리스트
  // @GetMapping("list")
  // public void list(Model model) throws Exception {
  // Member member = (Member) httpSession.getAttribute("loginUser");
  // model.addAttribute("list", memberWorkoutService.list(member.getNo()));
  // model.addAttribute("memberNo", member.getNo());
  // }
  //
  //
  // // 운동내역 리스트
  // @GetMapping("memberWorkoutList")
  // public void memberWorkoutlist(Model model) throws Exception {
  // Member member = (Member) httpSession.getAttribute("loginUser");
  // model.addAttribute("list", memberWorkoutService.list(member.getNo()));
  // model.addAttribute("memberNo", member.getNo());
  // }
  //
  //
  // @GetMapping("memberWorkoutUpdateForm") // 날짜, 운동, 몸무게, 걸음수 등 수정
  // public void updateForm(int memberWorkoutNo, Model model) throws Exception {
  // model.addAttribute("workoutList", memberWorkoutService.getMemberWorkout(memberWorkoutNo));
  // }
  //
  // @PostMapping("memberWorkoutUpdate")
  // public void update(MemberWorkout memberWorkout) throws Exception {
  // memberWorkoutService.update(memberWorkout);
  // }
  //
  // @GetMapping("memberWorkoutDelete")
  // public void delete(int memberWorkoutNo) throws Exception {
  // memberWorkoutService.delete(memberWorkoutNo);
  // }
  //
  //

}
