package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.MemberWorkout;

// 운동내역
public interface MemberWorkoutDao {

  // 날짜, 몸무게, 걸음수, 운동종목 및 시간 입력
  int insert(MemberWorkout memberWorkout) throws Exception;

  // 회원 본인 운동내역만 보여야해서 memberNo를 넣었음
  List<MemberWorkout> findAll(int memberNo) throws Exception;

  List<MemberWorkout> findAllByNo(int workoutListNo) throws Exception;

  // 회원 본인의 운동내역 수정
  int update(MemberWorkout memberWorkout) throws Exception;

  // 운동내역번호로 삭제
  int delete(int no) throws Exception;

  // 회원 본인 운동내역이 자세하게 보여줄 수 있음.
  MemberWorkout findByNo(int workoutListNo) throws Exception;


}


