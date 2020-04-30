package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.NoticeBoard;

public interface NoticeBoardDao {
  public int insert(NoticeBoard noticeboard) throws Exception;

  public List<NoticeBoard> findAll() throws Exception;

  public NoticeBoard findByNo(int no) throws Exception;

  public int update(NoticeBoard noticeboard) throws Exception;

  public int delete(int no) throws Exception;
}


