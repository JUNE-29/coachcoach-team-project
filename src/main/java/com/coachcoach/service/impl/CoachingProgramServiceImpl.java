package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachingProgramDao;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.service.CoachingProgramService;

@Component
public class CoachingProgramServiceImpl implements CoachingProgramService {

  CoachingProgramDao coachingProgramDao;

  @Override
  public int add(CoachingProgram coachingProgram) throws Exception {
    return coachingProgramDao.insert(coachingProgram);
  }

  @Override
  public List<CoachingProgram> list(int coachNo) throws Exception {
    return coachingProgramDao.findAllByCoachNo(coachNo);
  }

  @Override
  public int update(CoachingProgram coachingProgram) throws Exception {
    return coachingProgramDao.update(coachingProgram);
  }

  @Override
  public int delete(int no) throws Exception {
    return coachingProgramDao.delete(no);
  }

  @Override
  public List<CoachingProgram> search(String keyword) throws Exception {
    return coachingProgramDao.findByKeyword(keyword);
  }

  @Override
  public CoachingProgram get(int no) throws Exception {
    return coachingProgramDao.findByNo(no);
  }


}
