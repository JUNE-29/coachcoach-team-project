package com.coachcoach.web.auth;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.coachcoach.domain.Member;
import com.coachcoach.service.MemberService;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Controller
@RequestMapping("/auth/member")
public class MemberAuthController {

  static Logger logger = LogManager.getLogger(MemberAuthController.class);

  @Autowired
  MemberService memberService;

  @Autowired
  ServletContext servletContext;

  @GetMapping("form")
  public void memberForm() {}

  @PostMapping("login")
  public String memberLogin(String id, String password, String saveId, HttpServletResponse response,
      HttpSession session, Model model) throws Exception {


    Member member = memberService.get(id, password);

    // System.out.println(member.getAuthStatus());

    if (member.getAuthStatus() == 1) {
      Cookie cookie = new Cookie("id", id);
      logger.info(saveId);
      if (saveId != null) {
        cookie.setMaxAge(60 * 60 * 24 * 30);
      } else {
        cookie.setMaxAge(0);
      }
      response.addCookie(cookie);

      session.setAttribute("loginUser", member);
      // model.addAttribute("refreshUrl", "2;url=../../../index.jsp");
      return "redirect:../../../index.jsp";
    } else if (member.getAuthStatus() == 0) {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    } else {
      session.invalidate();
      model.addAttribute("refreshUrl", "2;url=form");
    }

    //
    // else {
    // session.invalidate();
    // model.addAttribute("refreshUrl", "2;url=form");
    // }

    return "auth/member/login";
  }

  // 로그인 할 때 ID,PW 체크
  @ResponseBody
  @RequestMapping(value = "loginIdPwcheck", method = RequestMethod.POST)
  public int loginIdPwcheck(@RequestParam String id, @RequestParam String password)
      throws Exception {
    logger.info(id);
    logger.info(password);
    int result = memberService.idPwCheck(id, password);
    return result;
  }


  @GetMapping("findidform")
  public void memberFindIdForm() {} // 아이디찾기폼

  @PostMapping("findid")
  public void memberFindId() {}

  @GetMapping("findpasswordform")
  public void memberFindPasswordForm() {} // 패스워드찾기폼

  @PostMapping("findpassword")
  public void memberFindPassword() {}

  @GetMapping("addform")
  public void memberAddForm() {} // 회원가입폼

  @PostMapping("add")
  public String memberAdd(Member member, MultipartFile photoFile, String tel1, String tel2,
      String tel3) throws Exception {

    String tel = tel1 + tel2 + tel3;
    member.setTel(tel);

    if (photoFile.getSize() > 0) {
      String dirPath = servletContext.getRealPath("/upload/member");
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      member.setPhoto(filename);
    }

    // if (memberService.add(member) > 0) {
    // // return "redirect:list";
    // } else {
    // throw new Exception("회원 가입을 할 수 없습니다.");
    // }

    memberService.add(member);
    return "auth/member/add";

  } // 회원가입

  @GetMapping("idCheckForm")
  public void memberIdCheck() {

  }

  // 아이디 중복체크 (회원가입)
  @ResponseBody
  @RequestMapping(value = "idcheck", method = RequestMethod.POST)
  public int idcheck(String userid) throws Exception {
    System.out.println(userid);
    int count = memberService.idcheck(userid);
    System.out.println(count);
    return count;
  }

  // 회원가입 후 권한 업데이트
  @RequestMapping(value = "joinConfirm", method = RequestMethod.GET)
  public void emailConfirm(Member member, Model model) throws Exception {
    System.out.println(member.getEmail() + ": auth confirmed");
    memberService.updateAuthStatus(member); // 권한 업데이트
    model.addAttribute("auth_check", 1);
  }

  // 아이디 찾기
  @ResponseBody
  @RequestMapping(value = "searchid", method = RequestMethod.POST)
  public String searchid(@RequestParam String userName, @RequestParam String userEmail)
      throws Exception {
    System.out.println(userName);
    System.out.println(userEmail);
    String result = memberService.getSerchId(userName, userEmail);
    return result;
  }

  // 비밀번호 찾기
  @RequestMapping(value = "searchPassword", method = RequestMethod.POST)
  @ResponseBody
  public String searchPassword(String userId, String userEmail, HttpServletRequest request)
      throws Exception {

    System.out.println(userId);
    memberService.mailSendWithPassword(userId, userEmail, request);

    return "auth/member/login";
  }

  // 비밀번호 찾기 위해 Id,Email 유효한지 검사
  @ResponseBody
  @RequestMapping(value = "searchPwConfirm", method = RequestMethod.POST)
  public int searchPwConfirm(@RequestParam String userId, @RequestParam String userEmail)
      throws Exception {
    System.out.println(userId);
    System.out.println(userEmail);
    int result = memberService.getSearchPw(userId, userEmail);
    return result;
  }


  // 네이버 소셜 로그인
  @SuppressWarnings("deprecation")
  @GetMapping("naverLogin")
  public String naverLogin(HttpServletRequest request, HttpServletResponse response, Model model,
      HttpSession session) throws Exception {

    String clientId = "BQMke4d067XmFs7Er4Ra";// 애플리케이션 클라이언트 아이디값";
    String clientSecret = "QGQ4XYxXLQ";// 애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode(
        "http://localhost:9999/coachcoach-team-project/app/auth/member/naverLogin", "UTF-8");
    String apiURL;
    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&code=" + code;
    apiURL += "&state=" + state;
    String access_token = "";
    String refresh_token = "";
    logger.info("apiURL=" + apiURL);

    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection) url.openConnection();
      con.setRequestMethod("GET");
      int responseCode = con.getResponseCode();
      BufferedReader br;
      logger.info("responseCode=" + responseCode);
      if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else { // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuffer res = new StringBuffer();
      while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
      }
      br.close();
      if (responseCode == 200) {
        System.out.println(res.toString());
        // json인 access_token을 String 형식으로 받아오기.
        JsonParser parsing = new JsonParser();
        JsonElement jsonElement = parsing.parse(res.toString());

        // Object obj = parsing.parse(res.toString());
        // JsonObject jsonObj = (JsonObject)obj;
        // access_token = (String)jsonObj.get("access_token");
        // refresh_token = (String)jsonObj.get("refresh_token");

        access_token = jsonElement.getAsJsonObject().get("access_token").toString();
        refresh_token = jsonElement.getAsJsonObject().get("refresh_token").toString();

        if (access_token != null) { // access_token을 받아왔다면
          try {

            System.out.println(access_token);
            String token = access_token; // 네이버 로그인 접근 토큰;
            String header = "Bearer " + token; // Bearer 다음에 공백 추가

            logger.info(header);
            String apiURL2 = "https://openapi.naver.com/v1/nid/me";

            Map<String, String> requestHeaders = new HashMap<>();
            requestHeaders.put("Authorization", header);
            String responseBody = get(apiURL2, requestHeaders);

            logger.info(responseBody);

            String naverRes;
            JsonParser naverResponse = new JsonParser();
            JsonElement nrJsonElement = naverResponse.parse(responseBody.toString());
            naverRes = nrJsonElement.getAsJsonObject().get("response").toString();

            logger.info(naverRes);

            // 이메일 값 가져오기....
            String email;
            JsonParser naverJson = new JsonParser();
            JsonElement naverJsonElement = naverJson.parse(naverRes.toString());
            email = naverJsonElement.getAsJsonObject().get("email").toString();

            int idx = email.indexOf("@");
            String mail1 = email.substring(1, idx);
            logger.info(mail1);
            String mail2 = email.substring(idx, 19);
            logger.info(mail2);
            email = mail1 + mail2;

            Member member = memberService.get(email);

            if (member == null) {
              // 현재 서버에 등록되지 않았다면, 새 사용자로 자동 등록한다.
              member = new Member();
              member.setId(email);
              member.setName("");
              member.setGender(0);
              member.setBirth("");
              member.setTel("");
              member.setEmail(email);
              member.setPassword(UUID.randomUUID().toString());
              Date cntDateNaver = new Date(System.currentTimeMillis());
              member.setCreateDate(cntDateNaver.toString());
              member.setAuthStatus(1);
              memberService.add(member);
              session.setAttribute("loginUser", member);
            } else {
              member.setAuthStatus(1);
              session.setAttribute("loginUser", member);
            }

            model.addAttribute("refreshUrl", "2;url=form");
            return "redirect:../../../index.jsp";

          } catch (Exception e) {
            e.printStackTrace();
          }
        }
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return "redirect:../../../index.jsp";
  }

  private static String get(String apiURL2, Map<String, String> requestHeaders) {
    HttpURLConnection con = connect(apiURL2);
    try {
      con.setRequestMethod("GET");
      for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
        con.setRequestProperty(header.getKey(), header.getValue());
      }

      int responseCode = con.getResponseCode();
      if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
        return readBody(con.getInputStream());
      } else { // 에러 발생
        return readBody(con.getErrorStream());
      }
    } catch (IOException e) {
      throw new RuntimeException("API 요청과 응답 실패", e);
    } finally {
      con.disconnect();
    }
  }

  private static HttpURLConnection connect(String apiURL2) {
    try {
      URL url = new URL(apiURL2);
      return (HttpURLConnection) url.openConnection();
    } catch (MalformedURLException e) {
      throw new RuntimeException("API URL이 잘못되었습니다. : " + apiURL2, e);
    } catch (IOException e) {
      throw new RuntimeException("연결이 실패했습니다. : " + apiURL2, e);
    }
  }

  private static String readBody(InputStream body) {
    InputStreamReader streamReader = new InputStreamReader(body);

    try (BufferedReader lineReader = new BufferedReader(streamReader)) {
      StringBuilder responseBody = new StringBuilder();

      String line;
      while ((line = lineReader.readLine()) != null) {
        responseBody.append(line);
      }

      return responseBody.toString();
    } catch (IOException e) {
      throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
    }
  }

}

