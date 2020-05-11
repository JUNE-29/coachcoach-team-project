package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.CoachingProgram;
import com.coachcoach.domain.CoachingProgramTag;

public interface CoachingProgramTagDao {

  int insert(CoachingProgram coachingProgram) throws Exception;

  List<CoachingProgramTag> findAllByProgramNo(int programNo) throws Exception;

  int deleteAll(int programNo) throws Exception;
}


