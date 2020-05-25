package com.coachcoach.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;
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

  @Override
  public void mailSendWithPassword(String userId, String userEmail, HttpServletRequest request)
      throws Exception {

    // 비밀번호는 6자리로 보내고 데이터베이스 비밀번호를 바꿔준다
    String key = new TempKey().getKey(6, false);

    // 회원 이름 꺼내는 코드
    Member member = memberDao.findById(userId);
    String name = member.getName();

    MimeMessage mail = mailSender.createMimeMessage();
    String htmlStr = "<h2>안녕하세요 '" + name + "' 님</h2><br><br>"
        + "<p>비밀번호 찾기를 신청해주셔서 임시 비밀번호를 발급해드렸습니다.</p>"
        + "<p>임시로 발급 드린 비밀번호는 <h2 style='color : blue'>'" + key
        + "'</h2>이며 로그인 후 마이페이지에서 비밀번호를 변경해주시면 됩니다.</p><br>"
        + "<h3><a href='http://localhost:9999/coachcoach-team-project/app/auth/member/form'>코치코치페이지</a></h3><br><br>"
        + "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
    try {
      mail.setSubject("임시 비밀번호가 발급되었습니다", "utf-8");
      mail.setText(htmlStr, "utf-8", "html");
      mail.addRecipient(RecipientType.TO, new InternetAddress(userEmail));
      mailSender.send(mail);
    } catch (MessagingException e) {
      e.printStackTrace();
    }

    memberDao.searchPassword(userId, userEmail, key);

  }

  @Override
  public int getSearchPw(String userId, String userEmail) throws Exception {
    return memberDao.searchPw(userId, userEmail);
  }
}
