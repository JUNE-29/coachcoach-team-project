package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.Member;

public interface MemberDao {

  // 회원 정보 입력
  int insert(Member member) throws Exception;

  // 회원 전체 리스트
  List<Member> findAll() throws Exception;

  // 회원 번호로 찾기
  Member findByNo(int no) throws Exception;

  // 회원 정보 수정
  int update(Member member) throws Exception;

  // 탈퇴 수정
  int updateWithdrawal(Map<String, Object> params) throws Exception;

  // 회원 삭제
  int delete(int no) throws Exception;

  //
  List<Member> findByKeyword(String keyword) throws Exception;

  // 회원가입
  Member findByIdAndPassword(Map<String, Object> params) throws Exception;

  // 회원가입
  Member findByNoAndidPassword(Map<String, Object> params) throws Exception;

  // 운동정보 수정
  int update(int no, Member member) throws Exception;

  // ID 중복체크
  int checkid(String inputId) throws Exception;
}


