package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.CalendarFile;

public interface CalendarFileDao {

  int insert(CalendarFile calendarFile) throws Exception;
  // 첨부파일 삽입

  List<CalendarFile> findByMemberNo(int MemberProgramCalendarNo) throws Exception;
  // 코치가 회원캘린더에 들어가서 작성하고 첨부파일넣어야 해서
  // MemberProgramCalendarNo를 파라미터로 넣었음.

  int delete(int no) throws Exception;
  // 첨부파일 삭제

}


