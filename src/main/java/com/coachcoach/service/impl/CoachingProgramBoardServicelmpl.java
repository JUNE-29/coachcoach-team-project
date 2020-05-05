package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachingProgramBoardDao;
import com.coachcoach.domain.CoachingProgramBoard;
import com.coachcoach.service.CoachingProgramBoardService;

@Component
public class CoachingProgramBoardServicelmpl implements CoachingProgramBoardService {

  CoachingProgramBoardDao coachingProgramBoardDao;

  public CoachingProgramBoardServicelmpl(CoachingProgramBoardDao coachingprogramboardDao) {
    this.coachingProgramBoardDao = coachingprogramboardDao;
  }

  @Override
  public int add(CoachingProgramBoard coachingProgramBoard) throws Exception {
    return coachingProgramBoardDao.insert(coachingProgramBoard);
  }

  @Override
  public int delete(int no) throws Exception {
    return coachingProgramBoardDao.delete(no);
  }

  @Override
  public CoachingProgramBoard get(int no) throws Exception {
    return coachingProgramBoardDao.findByNo(no);
  }

  @Override
  public int update(CoachingProgramBoard coachingProgramBoard) throws Exception {
    return coachingProgramBoardDao.update(coachingProgramBoard);
  }

  @Override
  public List<CoachingProgramBoard> listByCoachNo(int coachNo) {
    return coachingProgramBoardDao.findAllByCoachNo(coachNo);
  }

  @Override
  public List<CoachingProgramBoard> getByMemberNo(int memberNo) throws Exception {
    return coachingProgramBoardDao.findByMemberNo(memberNo);
  }

}
