package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.MemberWorkout;

public interface MemberWorkoutService {

  // 날짜, 몸무게, 걸음수, 운동종목 입력
  void add(MemberWorkout memberWorkout) throws Exception;

  // 회원번호로 운동종목 내역 보기(회원본인꺼만 봐야 하기 때문에 memberNo)
  List<MemberWorkout> list(int memberNo) throws Exception;

  // 운동내역번호로 운동종목 보기
  MemberWorkout getMemberWorkout(int workoutListNo) throws Exception;

  // 업데이트
  int update(MemberWorkout memberWorkout) throws Exception;

  // 삭제
  void delete(int no) throws Exception;

  List<Integer> getWalkWeek(int memberNo) throws Exception;

  List<Integer> getWalkMonth(int attribute) throws Exception;

  List<Integer> getWalkYear(int attribute) throws Exception;



}
