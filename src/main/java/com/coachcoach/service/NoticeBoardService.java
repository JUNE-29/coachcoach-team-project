package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.NoticeBoard;

public interface NoticeBoardService {

  void add(NoticeBoard noticeboard) throws Exception;

  List<NoticeBoard> list() throws Exception;

  int delete(int no) throws Exception;

  NoticeBoard get(int no) throws Exception;

  int update(NoticeBoard noticeboard) throws Exception;
}
