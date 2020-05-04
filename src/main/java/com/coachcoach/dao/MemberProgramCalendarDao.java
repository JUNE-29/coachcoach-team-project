package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.MemberProgramCalendar;

public interface MemberProgramCalendarDao {

  // 운동계획 등록
  int insert(MemberProgramCalendar memberProgramCalendar) throws Exception;

  // 수정
  int update(MemberProgramCalendar memberProgramCalendar) throws Exception;

  // 삭제
  int delete(int no) throws Exception;

  // 운동계획 상세보기
  MemberProgramCalendar findByNo(int no) throws Exception;

  // 코치용
  List<MemberProgramCalendar> findAllbyMemberCoachingProgramNo(int memberProgramNo);

  // 멤버용
  List<MemberProgramCalendar> findAllbyMemberNo(int memberNo);
}
