<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../../header.jsp"/>

<h1>로그인</h1>
<form action='login' method='post'>
ID: <input name='id' type='text' value='${id}'>
<input type='checkbox' name='saveId'> 아이디 저장해두기<br>
password: <input name='password' type='password'><br>
<button>로그인</button>
<p></p>
<button type="button" onclick="window.open('https://www.naver.com')"> 네이버 로그인</button>
<button type="button" onclick="window.open('https://www.daum.net')"> 카카오 로그인</button>
<button type="button" onclick="window.open('https://www.google.com')"> 구글 로그인</button>
<button type="button" onclick="window.open('https://www.facebook.com')"> 페이스북 로그인</button><br>
<p></p>
<button type="button" onclick="location.href='findidform'">아이디 찾기</button>
<button type="button" onclick="location.href='findpasswordform'">비밀번호 찾기</button>
</form>

<jsp:include page="../../footer.jsp"/>