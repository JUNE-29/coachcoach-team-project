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

  @Override
  public MemberWorkout getMemberWorkout(int workoutListNo) throws Exception {
    return memberWorkoutDao.findByNo(workoutListNo);
  }

  @Override
  public int update(MemberWorkout memberWorkout) throws Exception {
    return memberWorkoutDao.update(memberWorkout);
  }

  @Transactional
  @Override
  public void delete(int no) throws Exception {
    workoutUnitDao.deleteAll(no);
    memberWorkoutDao.delete(no);
  }

  @Override
  public List<MemberWorkout> list(int memberNo) throws Exception {
    return memberWorkoutDao.findAll(memberNo);
  }

  @Override
  public List<Integer> getWalkWeek(int memberNo) throws Exception {
    return memberWorkoutDao.findWalkWeek(memberNo);
  }

  @Override
  public List<Integer> getWalkMonth(int memberNo) throws Exception {
    return memberWorkoutDao.findWalkMonth(memberNo);
  }

  @Override
  public List<Integer> getWalkYear(int memberNo) throws Exception {
    return memberWorkoutDao.findWalkYear(memberNo);
  }

  @Override
  public List<Integer> getYearWeight(int memberNo) throws Exception {
    return memberWorkoutDao.findWeightYear(memberNo);
  }

  @Override
  public List<MemberWorkout> getDayWorkout(int memberNo) throws Exception {
    return memberWorkoutDao.findDayWorkout(memberNo);
  }

  @Override
  public List<MemberWorkout> getWeekWorkout(int memberNo) throws Exception {
    return memberWorkoutDao.findWeekWorkout(memberNo);
  }

  @Override
  public List<MemberWorkout> getMonthWorkout(int memberNo) throws Exception {
    return memberWorkoutDao.findMonthWorkout(memberNo);
  }



}
