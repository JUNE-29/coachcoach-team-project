package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.WorkoutList;

// 운동내역
public interface WorkoutListDao {

  // 운동량, 소모칼로리 기입 (일별로 기입)
  int insert(WorkoutList workoutList) throws Exception;

  // 회원 본인 운동내역만 보여야해서 memberNo를 넣었음
  List<WorkoutList> findAll(int memberNo) throws Exception;

  // 회원 본인의 운동내역 수정
  int update(WorkoutList workoutList) throws Exception;

  // 운동내역번호로 삭제
  int delete(int no) throws Exception;

  // 회원 본인 운동내역이 자세하게 보여줄 수 있음.
  WorkoutList findByNo(int no) throws Exception;

  // 운동내역번호로 찾기
  WorkoutList findByWorkoutNo(int workoutListNo) throws Exception;

  // 회원 본인의 운동내역을 그래프로 보여야 하기 때문에 memberNo를 넣었음
  List<WorkoutList> graphList(int memberNo) throws Exception;


}


