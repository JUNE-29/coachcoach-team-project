package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.MemberWorkoutDao;
import com.coachcoach.domain.MemberWorkout;
import com.coachcoach.service.MemberWorkoutService;

@Component
public class MemberWorkoutImpl implements MemberWorkoutService {

  MemberWorkoutDao memberWorkoutDao;

  public MemberWorkoutImpl(MemberWorkoutDao memberWorkoutDao) {
    this.memberWorkoutDao = memberWorkoutDao;
  }

  @Override
  public int add(MemberWorkout memberWorkout) throws Exception {
    return memberWorkoutDao.insert(memberWorkout);
  }

  @Override
  public List<MemberWorkout> list(int memberNo) throws Exception {
    return memberWorkoutDao.findAll(memberNo);
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



}
