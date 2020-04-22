package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.FoodBoard;

public interface FoodBoardService {

  int add(FoodBoard foodBoard) throws Exception;

  List<FoodBoard> list(int memberNo) throws Exception;

  FoodBoard get(int no) throws Exception;

  int update(FoodBoard coach) throws Exception;

  int delete(int no) throws Exception;

}
