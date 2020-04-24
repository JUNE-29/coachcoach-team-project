package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.CoachingProgram;

public interface CoachingProgramService {

  int add(CoachingProgram coachingProgram) throws Exception;

  List<CoachingProgram> list(int coachNo) throws Exception;

  int update(CoachingProgram coachingProgram) throws Exception;

  int delete(int no) throws Exception;

  List<CoachingProgram> search(String keyword) throws Exception;

  CoachingProgram get(int no) throws Exception;
}
