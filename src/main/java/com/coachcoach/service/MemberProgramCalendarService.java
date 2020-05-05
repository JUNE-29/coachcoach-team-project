package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.MemberProgramCalendar;

public interface MemberProgramCalendarService {

  List<MemberProgramCalendar> listByMemberCoachingProgramNo(int memberProgramNo) throws Exception;

  int delete(int no) throws Exception;

  int add(MemberProgramCalendar memberProgramCalendar) throws Exception;

  MemberProgramCalendar get(int no) throws Exception;

  int update(MemberProgramCalendar memberProgramCalendar) throws Exception;

  List<MemberProgramCalendar> listByMemberNo(int memberNo) throws Exception;


}
