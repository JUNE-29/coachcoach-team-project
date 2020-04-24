package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.CalendarFile;

public interface CalendarFileService {

  int add(CalendarFile calendarFile) throws Exception;

  List<CalendarFile> list(int memberProgramCalendar) throws Exception;

  int delete(int no) throws Exception;

}
