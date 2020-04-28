package com.coachcoach.web.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.domain.WorkoutList;
import com.coachcoach.service.WorkoutListService;

@Controller
@RequestMapping("/myPage/detailData")
public class DetailDataController {

  @Autowired
  WorkoutListService workoutListService;


  @GetMapping("addForm") // 날짜, 운동, 몸무게, 걸음수 등 기입
  public void addForm(WorkoutList workoutList) throws Exception {
    workoutListService.add(workoutList);
    return;
  }

  @PostMapping("add")
  public void add() {}


  @GetMapping("list") // detailData 페이지
  public void list(Model model) throws Exception {
    model.addAllAttributes(workoutListService.list());
  }

  // @GetMapping("updateForm") // 날짜, 운동, 몸무게, 걸음수 등 수정
  // public void updateForm() {}
  //
  // @PostMapping("update")
  // public void update() {}
  //
  // @GetMapping("delete")
  // public void delete() {}
}
