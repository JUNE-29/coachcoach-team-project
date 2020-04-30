package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.CoachingProgram;

public interface CoachingProgramDao {

  // 코칭 프로그램 입력
  int insert(CoachingProgram coachingProgram) throws Exception;

  // 코치가 자신이 진행했던 프로그램 리스트 조회
  List<CoachingProgram> findAllByCoachNo(int coachNo) throws Exception;

  // 코칭 프로그램 수정
  int update(CoachingProgram coachingProgram) throws Exception;

  // 코칭 프로그램 번호로 삭제
  int delete(int no) throws Exception;
  
  // 코칭 프로그램 리스트
  List<CoachingProgram> findAll() throws Exception;

  // 코칭 프로그램 검색(코치이름 and 프로그램명)
  List<CoachingProgram> findByKeyword(String keyword) throws Exception;

  // 코칭 프로그램 상세보기
  CoachingProgram findByNo(int no) throws Exception;
  
  // 코칭 프로그램 리스트(신청내역)
  List<CoachingProgram> applyList(int memberNo) throws Exception;
}


