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
  public int getSearchPw(String userId, String userEmail) throws Exception {
    return memberDao.searchPw(userId, userEmail);
  }

  @Override
  public Member get(String email) throws Exception {
    return memberDao.findByEmail(email);
  }

  @Override
  public int idPwCheck(String id, String password) throws Exception {
    return memberDao.checkIdPw(id, password);
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

    sendMail.setSubject("[CoachCoach(코치코치)] 회원가입을 위한 이메일 인증정보 입니다.");

    sendMail.setText(new StringBuffer()
        .append(
            "<h1 style='text-align:center;'>Coach<span style='color: #01b1d7;'>Coach</span></h1>")
        .append("<div style='text-align:center;'>").append("<h2>메일 인증 안내입니다.</h2>")
        .append("코치코치에 회원가입을 해주셔서 진심으로 감사드립니다. <br>")
        .append(
            "아래 <span style='color: #01b1d7; font-weight: bold;'>메일 인증 링크를 클릭</span>하여 회원가입을 완료해 주세요.<br>")
        .append("링크를 클릭하셔야만 로그인이 가능합니다.<br>").append("감사합니다.<br>")
        .append(
            "<br><a style='background: #01b1d7; color: #FFFFFF; font-size: 1.2em; text-decoration: none;' href='http://localhost:9999/coachcoach-team-project/app/auth/member/joinConfirm?authKey=")
        .append(member.getAuthKey()).append("'>이메일 인증 확인</a><br>").append("<br>").append("<hr>")
        .append(
            "<h5 style='color:#999696'>(주) 코치코치 |  서울특별시 서초구 서초4동 강남대로 459 |  대표이사: 엄진영<br></h5>")
        .append("</div>").toString());

    sendMail.setFrom("coachcoach.service@gmail.com", "Coachcoach");
    sendMail.setTo(member.getEmail());
    sendMail.send();

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
    String htmlStr = "<h1 style='text-align:center;'>"
        + "Coach<span style='color: #01b1d7;'>Coach</span></h1> <br>"
        + "<div style='text-align:center;'>"
        + "<span style='font-size: 22px; font-weight: 600;'>안녕하세요 '" + name + "' 님</span><br>"
        + "회원님께서 요청하신 임시 비밀번호는 아래와 같습니다.<br><br>"
        + "<p style='display: inline-block; border: 1px solid #ddd; width:80%; height:80px; vertical-align: middle'>"
        + "<span style='color : #01b1d7; font-size: 35px; font-weight: bold; margin:20px; text-align:center; line-height:80px;'>"
        + "'" + key + "'</p>" + "<br><br><p>위의 비밀번호는 재발급을 위해 마련된 임시 비밀번호 입니다.<br>"
        + "보안을 위해 로그인하시어 반드시 비밀번호를 수정해주시기 바랍니다.</p><br>"
        + "*혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다.* <br><br>"
        + "<a style='background: #01b1d7; color: #FFFFFF; font-size: 1.2em; text-decoration: none;"
        + "href='http://localhost:9999/coachcoach-team-project/app/auth/member/form'>로그인 페이지로 바로가기</a><br><br>"
        + "<hr>"
        + "<h5 style='color:#999696'>(주) 코치코치 |  서울특별시 서초구 서초4동 강남대로 459 |  대표이사: 엄진영<br></h5>"
        + "</div>";
    try {
      mail.setSubject("[CoachCoach(코치코치)] 임시 비밀번호가 발급되었습니다", "utf-8");
      mail.setText(htmlStr, "utf-8", "html");
      mail.addRecipient(RecipientType.TO, new InternetAddress(userEmail));
      mailSender.send(mail);
    } catch (MessagingException e) {
      e.printStackTrace();
    }

    memberDao.searchPassword(userId, userEmail, key);

  }

}
