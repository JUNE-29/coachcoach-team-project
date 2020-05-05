package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.CalendarFile;
import com.coachcoach.domain.MemberProgramCalendar;

public interface CalendarFileDao {

  int insert(MemberProgramCalendar memberProgramCalendar) throws Exception;
  // 첨부파일 삽입

  List<CalendarFile> findByMemberProgramCalendarNo(int MemberProgramCalendarNo) throws Exception;

  void update(MemberProgramCalendar memberProgramCalendar);

  void deleteAll(int MemberProgramCalendarNo);

}


