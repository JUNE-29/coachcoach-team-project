package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.CoachingProgramBoard;

public interface CoachingProgramBoardDao {

  int insert(CoachingProgramBoard CoachingProgramBoard) throws Exception;
  // 공지사항 등록

  List<CoachingProgramBoard> findAll() throws Exception;
  // 공지사항 리스트

  int update(CoachingProgramBoard coachingprogramboard) throws Exception;
  // 수정

  int delete(int no) throws Exception;
  // 삭제

  CoachingProgramBoard findByNo(int no) throws Exception;
  // 공지사항 상세보기

  List<CoachingProgramBoard> findByMemberNo(int memberNo) throws Exception;

  List<CoachingProgramBoard> findAllByCoachNo(int coachNo);

}


