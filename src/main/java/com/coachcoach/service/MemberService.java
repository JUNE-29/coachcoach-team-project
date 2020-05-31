package com.coachcoach.service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.coachcoach.domain.Member;

public interface MemberService {

  List<Member> list() throws Exception;

  int delete(int no) throws Exception;

  void add(Member member) throws Exception;

  Member get(int no) throws Exception;

  Member get(String id, String password) throws Exception;

  List<Member> search(String keyword) throws Exception;

  int update(Member member) throws Exception;

  int updateworkout(int no, Member member) throws Exception;

  int updateWithdrawal(Map<String, Object> params) throws Exception;

  Member get(int no, String id, String password) throws Exception;

  int idcheck(String inputId) throws Exception;

  void updateAuthStatus(Member member);

  String getSerchId(String userName, String userEmail) throws Exception;

  void mailSendWithPassword(String userId, String userEmail, HttpServletRequest request)
      throws Exception;

  int getSearchPw(String userId, String userEmail) throws Exception;

  public Member get(String email) throws Exception;

  int idPwCheck(String id, String password) throws Exception;
}
