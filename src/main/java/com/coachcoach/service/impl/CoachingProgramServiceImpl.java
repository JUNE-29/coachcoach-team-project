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
  public List<CoachingProgram> search(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByKeyword(params);
  }

  @Override
  public int searchCnt(String keyword) throws Exception {
    return coachingProgramDao.findByKeywordCnt(keyword);
  }

  @Override
  public CoachingProgram get(int no) throws Exception {
    return coachingProgramDao.findByProgramNo(no);
  }

  @Override // 코칭 프로그램 리스트
  public List<CoachingProgram> list() throws Exception {
    return coachingProgramDao.findAll();
  }



  @Override
  public List<CoachingProgram> findByGender(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByGender(params);
  }

  @Override
  public CoachingProgram getDetail(int no) throws Exception {
    return coachingProgramDao.findByProgramNo(no);
  }

  @Override
  public List<CoachingProgram> searchTag(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByTag(params);
  }

  @Override
  public CoachingProgram getProgram(int programNo) throws Exception {
    return coachingProgramDao.findByNo(programNo);
  }

  @Override
  public List<CoachingProgram> pageList(Map<String, Object> params) throws Exception {
    return coachingProgramDao.pageList(params);
  }

  @Override
  public int pageCount() throws Exception {
    return coachingProgramDao.pageCount();
  }

  @Override
  public List<CoachingProgram> searchReview(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByReview(params);
  }

  @Override
  public List<CoachingProgram> searchStar(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByStar(params);
  }

  @Override
  public CoachingProgram findByOrderNo(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByOrderNo(params);
  }

  @Override
  public int deleteUpdate(int programNo) {
    return coachingProgramDao.deleteUpdate(programNo);
  }

  @Override
  public List<CoachingProgram> findByMemberNo(Map<String, Object> params) throws Exception {
    return coachingProgramDao.findByMemberNo(params);
  }

  @Override
  public CoachingProgram selectStar(int no) throws Exception {
    return coachingProgramDao.selectStar(no);
  }

  @Override
  public List<CoachingProgram> applyList(Map<String, Object> params) throws Exception {
    return  coachingProgramDao.applyList(params);
  }

  @Override
  public int searchTagCnt(Map<String, Object> param) throws Exception {
    return coachingProgramDao.findByTagCnt(param);
  }

  @Override
  public int findByGenderCnt(Map<String, Object> param) throws Exception {
    return coachingProgramDao.findByGenderCnt(param);
  }

  @Override
  public int findByStarCnt() throws Exception {
    return coachingProgramDao.findByStarCnt();
  }

  @Override
  public int findByReviewCnt() throws Exception {
    return coachingProgramDao.findByReviewCnt();
  }

}
