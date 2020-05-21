package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.coachcoach.dao.MemberWorkoutDao;
import com.coachcoach.dao.WorkoutUnitDao;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.service.MemberWorkoutService;

@Component
public class MemberWorkoutServiceImpl implements MemberWorkoutService {

  MemberWorkoutDao memberWorkoutDao;
  WorkoutUnitDao workoutUnitDao;

  public MemberWorkoutServiceImpl(MemberWorkoutDao memberWorkoutDao,
      WorkoutUnitDao workoutUnitDao) {
    this.memberWorkoutDao = memberWorkoutDao;
    this.workoutUnitDao = workoutUnitDao;
  }

  @Transactional // 상호교환 - insert를 두개 다 성공해야 하는데 하나만 성공할 경우를 대비하여
  @Override
  public void add(MemberWorkout memberWorkout) throws Exception {
    memberWorkoutDao.insert(memberWorkout);
    workoutUnitDao.insert(memberWorkout);
    // memberWorkout에 있는 프로퍼티들을 mapper에서 for 문을 통해 받기 위해서!!
    // 여러 값들이 있기 때문에
  }

  @Transactional
  @Override
  public List<MemberWorkout> list(int memberNo, int workoutListNo) throws Exception {
    memberWorkoutDao.findAll(memberNo);
    workoutUnitDao.findAllByWorkoutUnit(workoutListNo);
    return null;
  }

  @Override
  public MemberWorkout getMemberWorkout(int no) throws Exception {
    return memberWorkoutDao.findByNo(no);
  }

  @Override
  public int update(MemberWorkout memberWorkout) throws Exception {
    return memberWorkoutDao.update(memberWorkout);
  }

  @Override
  public int delete(int no) throws Exception {
    return memberWorkoutDao.delete(no);
  }

  @Override
  public List<MemberWorkout> list(int memberNo) throws Exception {
    return memberWorkoutDao.findAll(memberNo);
  }

  @Override
  public List<MemberWorkout> findByNo(int workoutListNo) throws Exception {
    return memberWorkoutDao.findAllByNo(workoutListNo);
  }



}
