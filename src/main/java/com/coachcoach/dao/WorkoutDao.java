package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.Workout;

// 운동
public interface WorkoutDao {

  List<Workout> findAll() throws Exception;
  // 운동내역에 사용될 운동만 보여줌.



}


