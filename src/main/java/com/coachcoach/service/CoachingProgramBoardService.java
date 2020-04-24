package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.CoachingProgramBoard;

public interface CoachingProgramBoardService {

  int add(CoachingProgramBoard coachingprogramboard) throws Exception;

  List<CoachingProgramBoard> list() throws Exception;

  int delete(int no) throws Exception;

  CoachingProgramBoard get(int no) throws Exception;

  int update(CoachingProgramBoard board) throws Exception;
}
