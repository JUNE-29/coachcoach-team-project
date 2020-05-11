package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.domain.CoachingProgramTag;

public interface CoachingProgramTagService {

  int add(CoachingProgram coachingProgram) throws Exception;

  List<CoachingProgramTag> list(int programNo) throws Exception;

  int deleteAll(int programNo) throws Exception;

}
