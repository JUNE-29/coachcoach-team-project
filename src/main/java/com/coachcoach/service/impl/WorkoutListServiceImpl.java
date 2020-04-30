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
    return workoutListDao.insert(workoutList);
  }


  @Override
  public List<WorkoutList> list(int memberNo) throws Exception {
    return workoutListDao.findAll(memberNo);
  }


  @Override
  public WorkoutList get(int no) throws Exception {
    return workoutListDao.findByNo(no);
  }


  @Override
  public int update(WorkoutList workoutList) throws Exception {
    return workoutListDao.update(workoutList);
  }


  @Override
  public int delete(int no) throws Exception {
    return workoutListDao.delete(no);
  }

}
