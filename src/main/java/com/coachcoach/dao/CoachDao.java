package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.Coach;

public interface CoachDao {

  int insert(Coach coach) throws Exception;

  List<Coach> findAll() throws Exception;

  Coach findByNo(int no) throws Exception;

  int update(Coach coach) throws Exception;

  int updateProfile(Coach coach) throws Exception;

  int updateWithdrawal(Map<String, Object> params) throws Exception;

  int updateBankAccount(Coach coach) throws Exception;

  int delete(int no) throws Exception;

  List<Coach> findByKeyword(String keyword) throws Exception;

  Coach findByIdAndPassword(Map<String, Object> params) throws Exception;
}


