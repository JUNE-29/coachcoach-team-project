package com.coachcoach.service;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.MemberCoachingProgram;

public interface MemberCoachingProgramService {

  int add(MemberCoachingProgram memberCoachingProgram) throws Exception;

  List<MemberCoachingProgram> list(int memberNo) throws Exception;

  List<MemberCoachingProgram> listByCoachNo(int coachNo) throws Exception;

  List<MemberCoachingProgram> programList(int programNo) throws Exception;

  MemberCoachingProgram get(int no) throws Exception;

  int update(MemberCoachingProgram memberCoachingProgram) throws Exception;

  int delete(int no) throws Exception;

  List<MemberCoachingProgram> search(String keyword) throws Exception;

  List<MemberCoachingProgram> RequestList(int coachNo) throws Exception;

  int updateStatus(Map<String, Object> params) throws Exception;

  int updateEtc(Map<String, Object> params) throws Exception;

  int updateReview(Map<String, Object> params) throws Exception;

}
