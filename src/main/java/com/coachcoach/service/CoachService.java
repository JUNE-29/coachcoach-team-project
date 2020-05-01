package com.coachcoach.service;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.Coach;

public interface CoachService {

  List<Coach> list() throws Exception;

  int delete(int no) throws Exception;

  int add(Coach coach) throws Exception;

  Coach get(int no) throws Exception;

  Coach get(String id, String password) throws Exception;

  List<Coach> search(String keyword) throws Exception;

  int update(Coach coach) throws Exception;

  int updateProfile(Coach coach) throws Exception;

  int updateWithdrawal(Map<String, Object> params) throws Exception;

}
