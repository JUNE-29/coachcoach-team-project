package com.coachcoach.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachingProgramDao;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.service.CoachingProgramService;

@Component
public class CoachingProgramServiceImpl implements CoachingProgramService {

  CoachingProgramDao coachingProgramDao;

  public CoachingProgramServiceImpl(CoachingProgramDao coachingProgramDao) {
    this.coachingProgramDao = coachingProgramDao;
  }

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

  @Override // 코칭 프로그램 리스트
  public List<CoachingProgram> list() throws Exception {
    return coachingProgramDao.findAll();
  }

  @Override
  public List<CoachingProgram> applyList(int memberNo) throws Exception {
    return coachingProgramDao.applyList(memberNo);

  }

  @Override
  public List<CoachingProgram> search(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByGender(params);
  }

  @Override
  public CoachingProgram getdetail(int no) throws Exception {
    return coachingProgramDao.findByProgramNo(no);
  }
}
