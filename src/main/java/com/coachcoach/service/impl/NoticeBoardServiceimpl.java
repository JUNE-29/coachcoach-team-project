package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.NoticeBoardDao;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.service.NoticeBoardService;

@Component
public class NoticeBoardServiceimpl implements NoticeBoardService {

  NoticeBoardDao noticeBoardDao;

  public NoticeBoardServiceimpl(NoticeBoardDao noticeBoardDao) {
    this.noticeBoardDao = noticeBoardDao;
  }

  @Override
  public void add(NoticeBoard noticeboard) throws Exception {
    noticeBoardDao.insert(noticeboard);
  }

  @Override
  public List<NoticeBoard> list() throws Exception {
    return  noticeBoardDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return noticeBoardDao.delete(no);
  }

  @Override
  public NoticeBoard get(int no) throws Exception {
    return noticeBoardDao.findByNo(no);
  }

  @Override
  public int update(NoticeBoard noticeboard) throws Exception {
    return noticeBoardDao.update(noticeboard);
  }
}
