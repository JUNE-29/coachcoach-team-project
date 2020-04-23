package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.WorkoutListDao;
import com.coachcoach.domain.WorkoutList;
import com.coachcoach.service.WorkoutListService;

@Component
public class WorkoutListServiceImpl implements WorkoutListService {

  WorkoutListDao workoutListDao;

  public WorkoutListServiceImpl(WorkoutListDao workoutListDao) {
    this.workoutListDao = workoutListDao;
  }


  @Override
  public int add(WorkoutList workoutList) throws Exception {
    return this.workoutListDao.insert(workoutList);
  }

  @Override
  public List<WorkoutList> list() throws Exception {
    return this.workoutListDao.findAll();
  }

  @Override
  public int update(WorkoutList workoutList) throws Exception {
    return this.workoutListDao.update(workoutList);
  }

  @Override
  public int delete(int no) throws Exception {
    return this.workoutListDao.delete(no);
  }



}
