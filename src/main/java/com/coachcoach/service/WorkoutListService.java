package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.WorkoutList;

public interface WorkoutListService {

  int add(WorkoutList workoutList) throws Exception;

  List<WorkoutList> list(int memberNo) throws Exception;

  WorkoutList get(int no) throws Exception;

  int update(WorkoutList workoutList) throws Exception;

  int delete(int no) throws Exception;

  List<WorkoutList> graphList(int memberNo) throws Exception;



}
