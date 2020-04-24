package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachingProgramBoardDao;
import com.coachcoach.domain.CoachingProgramBoard;
import com.coachcoach.service.CoachingProgramBoardService;

@Component
public class CoachingProgramBoardServicelmpl implements CoachingProgramBoardService{

  CoachingProgramBoardDao coachingprogramboardDao;

  public CoachingProgramBoardServicelmpl(CoachingProgramBoardDao coachingprogramboardDao) {
   this.coachingprogramboardDao = coachingprogramboardDao;
  }

  @Override
  public int add(CoachingProgramBoard coachingprogramboard) throws Exception {
   coachingprogramboardDao.insert(coachingprogramboard);
    return 0;
  }

  @Override
  public List<CoachingProgramBoard> list() throws Exception {
    return coachingprogramboardDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return coachingprogramboardDao.delete(no);
  }

  @Override
  public CoachingProgramBoard get(int no) throws Exception {
    return coachingprogramboardDao.findByNo(no);
  }

  @Override
  public int update(CoachingProgramBoard coachingprogramboard) throws Exception {
    return coachingprogramboardDao.update(coachingprogramboard);
  }

}
