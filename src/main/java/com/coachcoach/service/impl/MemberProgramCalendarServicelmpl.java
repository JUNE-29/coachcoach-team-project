package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CalendarFileDao;
import com.coachcoach.dao.MemberProgramCalendarDao;
import com.coachcoach.domain.MemberProgramCalendar;
import com.coachcoach.service.MemberProgramCalendarService;

@Component
public class MemberProgramCalendarServicelmpl implements MemberProgramCalendarService {

  MemberProgramCalendarDao memberProgramCalendarDao;
  CalendarFileDao calendarFileDao;

  public MemberProgramCalendarServicelmpl(MemberProgramCalendarDao memberProgramCalendarDao) {
    this.memberProgramCalendarDao = memberProgramCalendarDao;
    this.calendarFileDao = calendarFileDao;
  }

  @Override
  public List<MemberProgramCalendar> listByMemberCoachingProgramNo(int memberProgramNo)
      throws Exception {
    return memberProgramCalendarDao.findAllbyMemberCoachingProgramNo(memberProgramNo);
  }

  @Override
  public int delete(int no) throws Exception {
    return memberProgramCalendarDao.delete(no);
  }

  @Override
  public int add(MemberProgramCalendar memberProgramCalendar) throws Exception {
    calendarFileDao.insert(memberProgramCalendar);
    return memberProgramCalendarDao.insert(memberProgramCalendar);
  }

  @Override
  public MemberProgramCalendar get(int no) throws Exception {
    return memberProgramCalendarDao.findByNo(no);
  }

  @Override
  public int update(MemberProgramCalendar memberProgramCalendar) throws Exception {
    return memberProgramCalendarDao.update(memberProgramCalendar);
  }

  @Override
  public List<MemberProgramCalendar> listByMemberNo(int memberNo) throws Exception {
    return memberProgramCalendarDao.findAllbyMemberNo(memberNo);
  }



}
