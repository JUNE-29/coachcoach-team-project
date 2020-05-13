package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.WorkoutUnit;

public interface WorkoutUnitService {

  int add(WorkoutUnit workoutUnit) throws Exception;

  List<WorkoutUnit> list(int no) throws Exception;

  int delete(int no) throws Exception;



}
