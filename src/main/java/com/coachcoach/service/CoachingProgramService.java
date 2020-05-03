package com.coachcoach.service;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.CoachingProgram;

public interface CoachingProgramService {

  int add(CoachingProgram coachingProgram) throws Exception;

  List<CoachingProgram> list(int coachNo) throws Exception;

  List<CoachingProgram> list() throws Exception;

  List<CoachingProgram> applyList(int memberNo) throws Exception;

  int update(CoachingProgram coachingProgram) throws Exception;

  int delete(int no) throws Exception;

  List<CoachingProgram> search(String keyword) throws Exception;

  List<CoachingProgram> search(Map<String, Object> params) throws Exception;
  
  List<CoachingProgram> searchTag(Map<String, Object> params) throws Exception;

  CoachingProgram get(int no) throws Exception;
  
  CoachingProgram getProgram(int no) throws Exception;

  CoachingProgram findByMemberNo(int programNo) throws Exception;

  CoachingProgram getdetail(int no) throws Exception;
}
