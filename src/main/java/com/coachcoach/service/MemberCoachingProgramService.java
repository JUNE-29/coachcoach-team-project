package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.MemberCoachingProgram;

public interface MemberCoachingProgramService {

  int add(MemberCoachingProgram memberCoachingProgram) throws Exception;

  List<MemberCoachingProgram> list(int memberNo) throws Exception;
  
  List<MemberCoachingProgram> programNolist(int programNo) throws Exception;

  MemberCoachingProgram get(int no) throws Exception;

  int update(MemberCoachingProgram memberCoachingProgram) throws Exception;

  int delete(int no) throws Exception;

  List<MemberCoachingProgram> search(String keyword) throws Exception;

}
