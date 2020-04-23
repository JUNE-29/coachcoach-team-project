package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.Weight;

public interface WeightService {

  List<Weight> list(int memberNo) throws Exception;

  int delete(int no) throws Exception;

  int add(Weight weight) throws Exception;

  int update(Weight weight) throws Exception;

}
