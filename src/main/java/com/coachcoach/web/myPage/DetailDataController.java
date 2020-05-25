package com.coachcoach.web.myPage;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
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
import com.google.gson.Gson;

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


  @PostMapping("memberWorkoutAdd")
  public String memberWorkoutAdd(MemberWorkout memberWorkout,
      @RequestParam(value = "workoutNoList") String[] workoutNoList,
      @RequestParam(value = "unitList") String[] unitList) throws Exception {
    ArrayList<WorkoutUnit> list = new ArrayList<>();
    for (int i = 0; i < workoutNoList.length; i++) {
      WorkoutUnit workoutUnit = new WorkoutUnit();
      workoutUnit.setWorkoutNo(Integer.parseInt(workoutNoList[i]));
      workoutUnit.setUnit(unitList[i]);
      list.add(workoutUnit);
    }
    memberWorkout.setWorkoutUnit(list);
    memberWorkout.setWorkoutDate(new Date(System.currentTimeMillis()));
    memberWorkoutService.add(memberWorkout);
    return "redirect:memberWorkoutList";
  }


  // 운동내역 리스트
  @GetMapping("memberWorkoutList")
  public void list(Model model) throws Exception {
    int memberNo = ((Member) httpSession.getAttribute("loginUser")).getNo();
    model.addAttribute("memberNo", memberNo);
    model.addAttribute("list", memberWorkoutService.list(memberNo));
    List<WorkoutUnit> list = workoutUnitService.list(); // 공통으로 넘길거라 값을 주지 않아도 된다.
    model.addAttribute("workoutUnitList", list);
  }

  @GetMapping("memberWorkoutDetail")
  public void detail(int workoutListNo, HttpServletResponse response) throws Exception {
    Gson json = new Gson();
    response.setCharacterEncoding("utf-8");
    PrintWriter out = response.getWriter();
    MemberWorkout mw = memberWorkoutService.getMemberWorkout(workoutListNo);
    mw.setWorkoutUnit(workoutUnitService.list(workoutListNo));
    out.print(json.toJson(mw));
    out.flush();
  }


  @GetMapping("memberWorkoutDelete")
  public void delete(int no) throws Exception {
    memberWorkoutService.delete(no);
  }



}
