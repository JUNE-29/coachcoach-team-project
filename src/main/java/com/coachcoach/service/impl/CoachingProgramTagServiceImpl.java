package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachingProgramTagDao;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.domain.CoachingProgramTag;
import com.coachcoach.service.CoachingProgramTagService;

@Component
public class CoachingProgramTagServiceImpl implements CoachingProgramTagService {
  CoachingProgramTagDao coachingProgramTagDao;

  public CoachingProgramTagServiceImpl(CoachingProgramTagDao coachingProgramTagDao) {
    this.coachingProgramTagDao = coachingProgramTagDao;
  }

  @Override
  public int add(CoachingProgram coachingProgram) throws Exception {
    return coachingProgramTagDao.insert(coachingProgram);
  }

  @Override
  public List<CoachingProgramTag> list(int programNo) throws Exception {
    return coachingProgramTagDao.findAllByProgramNo(programNo);
  }

  @Override
  public int deleteAll(int programNo) throws Exception {
    return coachingProgramTagDao.deleteAll(programNo);
  }

}
