package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.domain.Pagination;

public interface NoticeBoardDao {
  public int insert(NoticeBoard noticeboard) throws Exception;

  public List<NoticeBoard> findAll(Pagination pagination) throws Exception;

  public NoticeBoard findByNo(int no) throws Exception;

  public int update(NoticeBoard noticeboard) throws Exception;

  public int delete(int no) throws Exception;

//총 게시글 개수 확인

public int getnoticeBoardListCnt() throws Exception;


}


