package com.coachcoach.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.CoachDao;
import com.coachcoach.domain.Coach;
import com.coachcoach.service.CoachService;

@Component
public class CoachServiceImpl implements CoachService {

  CoachDao coachDao;

  public CoachServiceImpl(CoachDao coachDao) {
    this.coachDao = coachDao;
  }


  @Override
  public List<Coach> list() throws Exception {
    return coachDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return coachDao.delete(no);
  }

  @Override
  public int add(Coach coach) throws Exception {
    return coachDao.insert(coach);
  }

  @Override
  public Coach get(int no) throws Exception {
    return coachDao.findByNo(no);
  }

  @Override
  public Coach get(String id, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("id", id);
    params.put("password", password);
    return coachDao.findByIdAndPassword(params);
  }

  @Override
  public List<Coach> search(String keyword) throws Exception {
    return coachDao.findByKeyword(keyword);
  }

  @Override
  public int update(Coach coach) throws Exception {
    return coachDao.update(coach);
  }

  @Override
  public int updateProfile(Coach coach) throws Exception {
    return coachDao.updateProfile(coach);
  }


  @Override
  public int updateWithdrawal(Map<String, Object> params) throws Exception {
    return coachDao.updateWithdrawal(params);
  }



}
