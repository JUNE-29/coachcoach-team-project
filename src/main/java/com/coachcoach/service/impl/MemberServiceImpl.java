package com.coachcoach.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.MemberDao;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;

@Component
public class MemberServiceImpl implements MemberService {

  MemberDao memberDao;

  public MemberServiceImpl(MemberDao memberDao) {
    this.memberDao = memberDao;
  }

  @Override
  public List<Member> list() throws Exception {
    return memberDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return memberDao.delete(no);
  }

  @Override
  public int add(Member member) throws Exception {
    return memberDao.insert(member);
  }

  @Override
  public Member get(int no) throws Exception {
    return memberDao.findByNo(no);
  }

  @Override
  public Member get(String id, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("id", id);
    params.put("password", password);
    return memberDao.findByIdAndPassword(params);
  }


  @Override
  public List<Member> search(String keyword) throws Exception {
    return memberDao.findByKeyword(keyword);
  }

  @Override
  public int update(Member member) throws Exception {
    return memberDao.update(member);
  }
}
