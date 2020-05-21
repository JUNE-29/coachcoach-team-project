package com.coachcoach.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.MemberDao;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;
import com.coachcoach.util.MailUtils;
import com.coachcoach.util.TempKey;

@Component
public class MemberServiceImpl implements MemberService {

  @Autowired
  private JavaMailSender mailSender;

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
  public void add(Member member) throws Exception {

    memberDao.insert(member);

    // 임의의 auth키 생성
    String authkey = new TempKey().getKey(50, false);
    member.setAuthKey(authkey);
    memberDao.updateAuthkey(member);

    // mail 작성 관련
    MailUtils sendMail = new MailUtils(mailSender);

    sendMail.setSubject("회원가입 이메일 인증");

    sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")

        .append("<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>")

        .append(
            "<a href='http://localhost:9999/coachcoach-team-project/app/auth/member/joinConfirm?authKey=")

        .append(member.getAuthKey())

        .append("'>이메일 인증 확인</a>")

        .toString());

    sendMail.setFrom("coachcoach.service@gmail.com", "Coachcoach");

    sendMail.setTo(member.getEmail());

    sendMail.send();

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

  @Override
  public Member get(int no, String id, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("no", no);
    params.put("id", id);
    params.put("password", password);
    return memberDao.findByNoAndidPassword(params);
  }

  @Override
  public int updateWithdrawal(Map<String, Object> params) throws Exception {
    return memberDao.updateWithdrawal(params);
  }

  @Override
  public int updateworkout(int no, Member member) throws Exception {
    return memberDao.update(no, member);

  }


  @Override
  public int idcheck(String inputId) throws Exception {
    return memberDao.checkid(inputId);
  }

  @Override
  public void updateAuthStatus(Member member) {
    memberDao.updateAuthStatus(member);
  }

  @Override
  public String getSerchId(String userName, String userEmail) throws Exception {
    return memberDao.searchId(userName, userEmail);
  }
}
