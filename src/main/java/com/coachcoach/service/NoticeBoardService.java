package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.domain.Pagination;

public interface NoticeBoardService {

  void add(NoticeBoard noticeboard) throws Exception;

  List<NoticeBoard> list(Pagination pagination) throws Exception;

  int delete(int no) throws Exception;

  NoticeBoard get(int no) throws Exception;

  int update(NoticeBoard noticeboard) throws Exception;

  //총 게시글 개수 확인
  public int getnoticeBoardListCnt() throws Exception;





}
