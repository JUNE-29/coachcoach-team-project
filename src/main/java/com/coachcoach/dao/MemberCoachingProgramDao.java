package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.MemberCoachingProgram;

public interface MemberCoachingProgramDao {

  int insert(MemberCoachingProgram memberCoachingProgram) throws Exception;
  // 멤버가 프로그램 신청시 DB에 등록될때 사용

  List<MemberCoachingProgram> findAll(int memberNo) throws Exception;
  // 어떤 회원이 본인 프로그램 신청 목록을 볼때 본인의 신청프로그램들만 보여야해서
  // memberNo가 필요할 것 같아 파라미터로 넣었습니다

  List<MemberCoachingProgram> findByProgramNo(int programNo) throws Exception;
  // 프로그램번호로 조회


  int update(MemberCoachingProgram memberCoachingProgram) throws Exception;
  // 상태, 후기, 별점, 비고, 결제일 등 해당 칼럼값이 업데이트 될 시 사용(회원용 아님)

  int delete(int no) throws Exception;
  // 회원이 본인이 신청한 프로그램 리스트에서
  // 어떤 프로그램을 목록에서 삭제 가능하도록 권한을 줄지는 고려해야 할 부분같음
  // 그러나 관리자가 쓸 수 있도록 만듦

  List<MemberCoachingProgram> findByKeyword(String keyword) throws Exception;
  // 회원이 특정 키워드로 본인이 신청한 프로그램 목록을 필터링하고 싶을 때 사용
  // 그런 필터기능을 넣을지는 모르겠음


  int updateEtc(Map<String, Object> params) throws Exception;
  // 거절사유 etc 작성시 사용

  int updateStatus(Map<String, Object> params) throws Exception;
  // 상태 변경시 사용

  List<MemberCoachingProgram> findAllRequest(int coachNo) throws Exception;
  // 코치페이지 요청된 프로그램 리스트를 보기 위함.

  MemberCoachingProgram findByNo(int no) throws Exception;
  // 신청프로그램 클릭시 디테일 보여주기 위함

  MemberCoachingProgram findByNo2(int no) throws Exception;
  // 프로그램 디테일(은정만듬)
}


