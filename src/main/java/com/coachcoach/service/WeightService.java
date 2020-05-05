package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.Weight;

public interface WeightService {

  int add(Weight weight) throws Exception;

  List<Weight> findAllByMemberNo(int memberNo) throws Exception;

  Weight findByweightNo(int weightNo) throws Exception;

  int delete(int no) throws Exception;

  int update(Weight weight) throws Exception;

}
