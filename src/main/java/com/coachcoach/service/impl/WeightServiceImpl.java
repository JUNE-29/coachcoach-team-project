package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.WeightDao;
import com.coachcoach.domain.Weight;
import com.coachcoach.service.WeightService;

@Component
public class WeightServiceImpl implements WeightService {

  WeightDao weightDao;

  public WeightServiceImpl(WeightDao weightDao) {
    this.weightDao = weightDao;
  }


  @Override
  public List<Weight> findAllByMemberNo(int memberNo) throws Exception {
    return weightDao.findAllByMemberNo(memberNo);
  }

  @Override
  public int delete(int no) throws Exception {
    return weightDao.delete(no);
  }

  @Override
  public int add(Weight weight) throws Exception {
    return weightDao.insert(weight);
  }

  @Override
  public int update(Weight weight) throws Exception {
    return weightDao.update(weight);
  }


}
