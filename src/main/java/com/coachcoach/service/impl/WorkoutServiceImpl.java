package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.WorkoutDao;
import com.coachcoach.domain.Workout;
import com.coachcoach.service.WorkoutService;

@Component
public class WorkoutServiceImpl implements WorkoutService {

  WorkoutDao workoutDao;

  public WorkoutServiceImpl(WorkoutDao workoutDao) {
    this.workoutDao = workoutDao;
  }

  @Override
  public List<Workout> list() throws Exception {
    return this.workoutDao.findAll();
  }


}
