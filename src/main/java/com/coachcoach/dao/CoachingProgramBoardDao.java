package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.NoticeBoard;

// 공지사항 게시판
public interface NoticeBoardDao {
  public int insert(NoticeBoard board) throws Exception;

  public List<NoticeBoard> findAll() throws Exception;

  public NoticeBoard findByNo(int no) throws Exception;

  public int update(NoticeBoard board) throws Exception;

  public int delete(int no) throws Exception;
}


