package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
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

  // 이메일 인증 관련 - 유저 인증키 생성 메서드
  void updateAuthkey(Member member);

  // 이메일 인증 관련 - 유저 인증키 Y로 바꿔주는 메서드
  void updateAuthStatus(Member member);

  // 아이디찾기
  String searchId(@Param("userName") String userName, @Param("userEmail") String userEmail);

  // 비밀번호찾기
  int searchPassword(String userId, String userEmail, String key);

  // 회원이름조회 - 임시비밀번호 발송시 이름 조회
  Member findById(String userId);

  // 회원 아이디 이메일 유효 검사 - 임시비밀번호 발송때
  int searchPw(@Param("userId") String userId, @Param("userEmail") String userEmail);
}


