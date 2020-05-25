package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.NoticeBoardDao;
import com.coachcoach.domain.NoticeBoard;
import com.coachcoach.domain.Pagination;
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
  public List<NoticeBoard> list(Pagination pagination) throws Exception {
    return  noticeBoardDao.findAll(pagination);
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

  //총 게시글 개수 확인

  @Override

  public int getnoticeBoardListCnt() throws Exception {

      return noticeBoardDao.getnoticeBoardListCnt();
  }


}
