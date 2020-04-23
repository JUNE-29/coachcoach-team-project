package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.NoticeBoardDao;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.service.NoticeBoardService;

@Component
public class NoticeBoardServiceImpl implements NoticeBoardService {

  NoticeBoardDao noticeboardDao;

  public NoticeBoardServiceImpl(NoticeBoardDao boardDao) {
    this.noticeboardDao = boardDao;
  }

  @Override
  public void add(NoticeBoard board) throws Exception {
    noticeboardDao.insert(board);
  }

  @Override
  public List<NoticeBoard> list() throws Exception {
    return noticeboardDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return noticeboardDao.delete(no);
  }

  @Override
  public NoticeBoard get(int no) throws Exception {
    return noticeboardDao.findByNo(no);
  }

  @Override
  public int update(NoticeBoard board) throws Exception {
    return noticeboardDao.update(board);
  }
}
