package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.MemberProgramCalendar;

public interface MemberProgramCalendarDao {

  // 운동계획 등록
  int insert(MemberProgramCalendar memberprogramcalendar ) throws Exception;

  // 운동계획 리스트
  List<MemberProgramCalendar> findAllByCoachNo(int No) throws Exception;

  // 수정
  int update(MemberProgramCalendar memberprogramcalendar) throws Exception;

  // 삭제
  int delete(int no) throws Exception;

  // 운동키워드검색?
  List<MemberProgramCalendar> findByKeyword(String keyword) throws Exception;

  // 운동계획 상세보기
  MemberProgramCalendar findByNo(int no) throws Exception;
}
