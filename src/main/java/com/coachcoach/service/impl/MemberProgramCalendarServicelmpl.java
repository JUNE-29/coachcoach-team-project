package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.MemberProgramCalendarDao;
import com.coachcoach.domain.MemberProgramCalendar;
@Component
public class MemberProgramCalendarServicelmpl implements MemberProgramCalendarDao{

  MemberProgramCalendarDao memberProgramCalendarDao;

  public MemberProgramCalendarServicelmpl(MemberProgramCalendarDao memberProgramCalendarDao) {
  this.memberProgramCalendarDao = memberProgramCalendarDao;
  }

  @Override
  public int insert(MemberProgramCalendar memberprogramcalendar) throws Exception {
    return memberProgramCalendarDao.insert(memberprogramcalendar);
  }

  @Override
  public List<MemberProgramCalendar> findAllByCoachNo(int No) throws Exception {
    return memberProgramCalendarDao.findAllByCoachNo(No);
  }

  @Override
  public int update(MemberProgramCalendar memberprogramcalendar) throws Exception {
    return memberProgramCalendarDao.update(memberprogramcalendar);
  }

  @Override
  public int delete(int no) throws Exception {
    return memberProgramCalendarDao.delete(no);
  }

  @Override
  public List<MemberProgramCalendar> findByKeyword(String keyword) throws Exception {
    return memberProgramCalendarDao.findByKeyword(keyword);
  }

  @Override
  public MemberProgramCalendar findByNo(int no) throws Exception {
    return memberProgramCalendarDao.findByNo(no);
  }
}
