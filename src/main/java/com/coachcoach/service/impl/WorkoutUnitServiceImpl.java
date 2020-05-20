package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.WorkoutUnitDao;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.domain.WorkoutUnit;
import com.coachcoach.service.WorkoutUnitService;

@Component
public class WorkoutUnitServiceImpl implements WorkoutUnitService {

  WorkoutUnitDao workoutUnitDao;

  public WorkoutUnitServiceImpl(WorkoutUnitDao workoutUnitDao) {
    this.workoutUnitDao = workoutUnitDao;
  }

  @Override
  public List<WorkoutUnit> list(int workoutListNo) throws Exception {
    return workoutUnitDao.findAllByWorkoutUnit(workoutListNo);
  }

  @Override
  public int delete(int workoutListNo) throws Exception {
    return workoutUnitDao.deleteAll(workoutListNo);
  }

  @Override
  public int add(MemberWorkout memberWorkout) throws Exception {
    return workoutUnitDao.insert(memberWorkout);
  }

  @Override
  public List<WorkoutUnit> list() throws Exception {
    return workoutUnitDao.findAll();
  }



}
