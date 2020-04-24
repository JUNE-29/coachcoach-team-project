package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.MemberProgramCalendar;

public interface MemberProgramCalendarService {

  List<MemberProgramCalendar> list() throws Exception;

  int delete(int no) throws Exception;

  int add(MemberProgramCalendar memberprogramcalendar) throws Exception;

  MemberProgramCalendar get(int no) throws Exception;

  MemberProgramCalendar get(String email, String password) throws Exception;

  List<MemberProgramCalendar> search(String keyword) throws Exception;

  int update(MemberProgramCalendar memberprogramcalendar) throws Exception;

}
