package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.CoachingProgram;

public interface CoachingProgramDao {

  // 코치페이지 - 코칭 프로그램 입력
  int insert(CoachingProgram coachingProgram) throws Exception;

  // 코치페이지 - 프로그램 리스트 조회
  List<CoachingProgram> findAllByCoachNo(int coachNo) throws Exception;

  // 코칭 프로그램 수정
  int update(CoachingProgram coachingProgram) throws Exception;

  // 코칭 프로그램 번호로 삭제
  int delete(int no) throws Exception;

  // 코칭 프로그램 리스트
  List<CoachingProgram> findAll() throws Exception;

  // 코칭 프로그램 검색(코치이름 or 프로그램명)
  List<CoachingProgram> findByKeyword(String keyword) throws Exception;

  // 코칭 프로그램 검색(코치성별 or 방식)
  List<CoachingProgram> findByGender(Map<String, Object> params) throws Exception;
  
  // 코칭 프로그램 검색(코치성별 or 방식)
  List<CoachingProgram> findByTag(Map<String, Object> params) throws Exception;

  // 코칭 프로그램 상세보기
  CoachingProgram findByNo(int programNo) throws Exception;

  // 회원 번호로 찾기
  CoachingProgram findByMemberNo(int no) throws Exception;

  // 코칭 프로그램 리스트(신청내역)
  List<CoachingProgram> applyList(int memberNo) throws Exception;

  // 코치페이지- 코칭 프로그램관리(자세히보기)
  CoachingProgram findByProgramNo(int no) throws Exception;
}


