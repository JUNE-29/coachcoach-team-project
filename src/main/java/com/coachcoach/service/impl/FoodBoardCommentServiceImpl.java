package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.FoodBoardCommentDao;
import com.coachcoach.domain.FoodBoardComment;
import com.coachcoach.service.FoodBoardCommentService;

@Component
public class FoodBoardCommentServiceImpl implements FoodBoardCommentService {
  FoodBoardCommentDao foodBoardCommentDao;

  public FoodBoardCommentServiceImpl(FoodBoardCommentDao foodBoardCommentDao) {
    this.foodBoardCommentDao = foodBoardCommentDao;
  }

  @Override
  public int add(FoodBoardComment foodBoardComment) throws Exception {
    return foodBoardCommentDao.insert(foodBoardComment);
  }

  @Override
  public List<FoodBoardComment> list(int foodBoardNo) throws Exception {
    return foodBoardCommentDao.findAll(foodBoardNo);
  }

  @Override
  public int delete(int no) throws Exception {
    return foodBoardCommentDao.delete(no);
  }

  @Override
  public int deleteAll(int foodBoardNo) throws Exception {
    return foodBoardCommentDao.deleteAll(foodBoardNo);
  }

}
