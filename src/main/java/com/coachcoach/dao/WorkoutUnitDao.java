package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.domain.WorkoutUnit;

// 운동내역
public interface WorkoutUnitDao {

  // 날짜, 몸무게, 걸음수, 운동종목 및 시간 입력
  int insert(MemberWorkout memberWorkout) throws Exception;

  // 회원 본인 운동내역만 보여야해서 memberNo를 넣었음
  List<WorkoutUnit> findAllByWorkoutListNo(int workoutListNo) throws Exception;

  // 운동내역번호로 삭제
  int deleteAll(int no) throws Exception;

  List<WorkoutUnit> findAll() throws Exception;

}


