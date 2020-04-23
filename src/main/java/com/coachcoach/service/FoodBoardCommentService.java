package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.FoodBoardComment;

public interface FoodBoardCommentService {

  int add(FoodBoardComment foodBoardComment) throws Exception;

  List<FoodBoardComment> list(int foodBoardNo) throws Exception;

  int delete(int no) throws Exception;

  int deleteAll(int foodBoardNo) throws Exception;

}
