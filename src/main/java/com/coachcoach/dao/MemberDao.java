package com.coachcoach.dao;

import java.util.List;
import java.util.Map;
import com.coachcoach.domain.Member;

public interface MemberDao {

  int insert(Member member) throws Exception;

  List<Member> findAll() throws Exception;

  Member findByNo(int no) throws Exception;

  int update(Member member) throws Exception;

  int delete(int no) throws Exception;

  List<Member> findByKeyword(String keyword) throws Exception;

  Member findByIdAndPassword(Map<String, Object> params) throws Exception;
}


