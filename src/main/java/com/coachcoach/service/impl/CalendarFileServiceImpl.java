package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CalendarFileDao;
import com.coachcoach.dao.MemberProgramCalendarDao;
import com.coachcoach.domain.CalendarFile;
import com.coachcoach.service.CalendarFileService;

@Component
public class CalendarFileServiceImpl implements CalendarFileService {

  CalendarFileDao calendarFileDao;
  MemberProgramCalendarDao memberProgramCalendarDao;

  public CalendarFileServiceImpl(CalendarFileDao calendarFileDao,
      MemberProgramCalendarDao memberProgramCalendarDao) {
    this.calendarFileDao = calendarFileDao;
    this.memberProgramCalendarDao = memberProgramCalendarDao;

  }


  @Override
  public int add(CalendarFile calendarFile) throws Exception {
    return this.calendarFileDao.insert(calendarFile);
  }

  @Override
  public List<CalendarFile> list() throws Exception {
    return this.calendarFileDao.findByMemberNo(MemberProgramCalendarNo);
  }

  @Override
  public int delete(int no) throws Exception {
    return 0;
  }



}

