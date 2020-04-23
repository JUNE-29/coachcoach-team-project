package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.WorkoutList;

// 운동내역
public interface WorkoutListDao {
  int insert(WorkoutList workoutList) throws Exception;
  // 운동량, 소모칼로리 기입 (일별로 기입)

  List<WorkoutList> findAll() throws Exception;
  // 그래프를 활용하여 주/월/일 로 보여줌

  int update(WorkoutList workoutList) throws Exception;
  // 운동내역 수정

  int delete(int no) throws Exception;
  // 운동내역번호로 삭제


}


