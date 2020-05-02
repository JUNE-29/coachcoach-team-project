package com.coachcoach.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.MemberCoachingProgramDao;
import com.coachcoach.domain.MemberCoachingProgram;
import com.coachcoach.service.MemberCoachingProgramService;

@Component
public class MemberCoachingProgramServiceImpl implements MemberCoachingProgramService {

  MemberCoachingProgramDao memberCoachingProgramDao;

  public MemberCoachingProgramServiceImpl(MemberCoachingProgramDao memberCoachingProgramDao) {
    this.memberCoachingProgramDao = memberCoachingProgramDao;
  }

  @Override
  public int add(MemberCoachingProgram memberCoachingProgram) throws Exception {
    return memberCoachingProgramDao.insert(memberCoachingProgram);
  }

  @Override
  public List<MemberCoachingProgram> list(int memberNo) throws Exception {
    return memberCoachingProgramDao.findAll(memberNo);
  }

  @Override
  public MemberCoachingProgram get(int no) throws Exception {
    return memberCoachingProgramDao.findByNo(no);
  }

  @Override
  public int update(MemberCoachingProgram memberCoachingProgram) throws Exception {
    return memberCoachingProgramDao.update(memberCoachingProgram);
  }

  @Override
  public int delete(int no) throws Exception {
    return memberCoachingProgramDao.delete(no);
  }

  @Override
  public List<MemberCoachingProgram> search(String keyword) throws Exception {
    return memberCoachingProgramDao.findByKeyword(keyword);
  }

  @Override
  public List<MemberCoachingProgram> programList(int programNo) throws Exception {
    return memberCoachingProgramDao.findByProgramNo(programNo);
  }


  @Override
  public List<MemberCoachingProgram> RequestList(int coachNo) throws Exception {
    return memberCoachingProgramDao.findAllRequest(coachNo);
  }

  @Override
  public int updateStatus(Map<String, Object> params) throws Exception {
    return memberCoachingProgramDao.updateStatus(params);
  }

  @Override
  public int updateEtc(Map<String, Object> params) throws Exception {
    return memberCoachingProgramDao.updateEtc(params);
  }

  @Override
  public int updateReview(Map<String, Object> params) throws Exception {
    return memberCoachingProgramDao.updateReview(params);
  }

  @Override
  public List<MemberCoachingProgram> listByCoachNo(int coachNo) throws Exception {
    return memberCoachingProgramDao.findByCoachNo(coachNo);
  }

  @Override
  public List<MemberCoachingProgram> searchDate(Map<String, Object> params) throws Exception {
    return memberCoachingProgramDao.findByDate(params);
  }

  @Override
  public List<MemberCoachingProgram> memberList(int coachNo) throws Exception {
    return memberCoachingProgramDao.findAllMember(coachNo);
  }

}
