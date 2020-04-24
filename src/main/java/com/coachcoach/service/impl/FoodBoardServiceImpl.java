package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.coachcoach.dao.FoodBoardCommentDao;
import com.coachcoach.dao.FoodBoardDao;
import com.coachcoach.domain.FoodBoard;
import com.coachcoach.service.FoodBoardService;

@Component
public class FoodBoardServiceImpl implements FoodBoardService {
  FoodBoardDao foodBoardDao;
  FoodBoardCommentDao foodBoardCommentDao;

  public FoodBoardServiceImpl(FoodBoardDao foodBoardDao, FoodBoardCommentDao foodBoardCommentDao) {
    this.foodBoardDao = foodBoardDao;
    this.foodBoardCommentDao = foodBoardCommentDao;
  }

  @Override
  public int add(FoodBoard foodBoard) throws Exception {
    return foodBoardDao.insert(foodBoard);
  }

  @Override
  public List<FoodBoard> list(int memberNo) throws Exception {
    return foodBoardDao.findAll(memberNo);
  }

  @Override
  public FoodBoard get(int no) throws Exception {
    return foodBoardDao.findByNo(no);
  }

  @Override
  public int update(FoodBoard foodBoard) throws Exception {
    return foodBoardDao.update(foodBoard);
  }

  @Transactional
  @Override
  public int delete(int no) throws Exception {
    foodBoardCommentDao.deleteAll(no);
    return foodBoardDao.delete(no);
  }

}
