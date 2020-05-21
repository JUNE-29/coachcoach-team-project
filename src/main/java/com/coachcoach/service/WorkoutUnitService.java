package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.domain.WorkoutUnit;

public interface WorkoutUnitService {

  // 운동단위 삽입
  int add(MemberWorkout memberWorkout) throws Exception;

  // 운동내역번호(MemberWorkout -> workoutListNo)로 리스트를 봄
  List<WorkoutUnit> list(int workoutListNo) throws Exception;

  // 삭제
  int delete(int workoutListNo) throws Exception;

  List<WorkoutUnit> list() throws Exception; // 모조리 다 찾기!!



}
