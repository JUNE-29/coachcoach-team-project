package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.Workout;

public interface WorkoutService {


  int add(Workout workout) throws Exception;

  List<Workout> list() throws Exception;

  int delete(int no) throws Exception;



}
