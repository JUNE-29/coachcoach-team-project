package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.MemberCoachingProgram;

public interface MemberCoachingProgramDao {

  int insert(MemberCoachingProgram memberCoachingProgram) throws Exception;

  List<MemberCoachingProgram> findAllByMemberNo(int memberNo) throws Exception;

  List<MemberCoachingProgram> findByProgramNo(int programNo) throws Exception;

  int update(MemberCoachingProgram memberCoachingProgram) throws Exception;

  int delete(int no) throws Exception;

  List<MemberCoachingProgram> findByKeyword(String keyword) throws Exception;

  List<MemberCoachingProgram> findByDate(Map<String, Object> params) throws Exception;

  int updateEtc(Map<String, Object> params) throws Exception;
  // 거절사유 etc 작성시 사용

  // 상태 변경시 사용
  int updateStatus(Map<String, Object> params) throws Exception;

  //
  int updatePaydate(Map<String, Object> params) throws Exception;

  // 후기 등록
  int updateReview(Map<String, Object> params) throws Exception;

  // 신청서 수정
  int updateApply(Map<String, Object> params) throws Exception;

  List<MemberCoachingProgram> findAllRequest(int coachNo) throws Exception;
  // 코치페이지 요청된 프로그램 리스트를 보기 위함.

  MemberCoachingProgram findByNo(int no) throws Exception;
  // 신청프로그램 클릭시 디테일 보여주기 위함

  List<MemberCoachingProgram> findByCoachNo(int coachNo) throws Exception;
  // 코치 결제페이지

  List<MemberCoachingProgram> findAllMember(int coachNo) throws Exception;

  List<MemberCoachingProgram> reivewstar(Map<String, Object> params) throws Exception;

  int applyCount(int no) throws Exception;

  int statusCount(Map<String, Object> apply)  throws Exception;

  List<MemberCoachingProgram> applyList(Map<String, Object> params)  throws Exception;

  List<MemberCoachingProgram> allList(int no)  throws Exception;

  List<MemberCoachingProgram> searchApplyList(Map<String, Object> params)  throws Exception;

  int applyDateCnt(Map<String, Object> param) throws Exception;

  int statusDateCnt(Map<String, Object> param) throws Exception;

}


