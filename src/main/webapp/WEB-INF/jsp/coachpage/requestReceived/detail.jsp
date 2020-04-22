<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>
<form action='detail' method='post'>

  <h1>회원정보</h1>
  
  <img src="../../alesso.jfif"> 
  이름 <br>
  아이디 <br>
  전화번호 <br>
  이메일 <br>
  나이 <br>
  프로그램명 <br>
  요청날짜 <br>
  시작가능날짜 <br>
  특이사항 <br>
  
  <br>
  <button type="button" onclick="location.href='accept'">수락</button>
  <button type="button" onclick="location.href='rejectForm'">거절</button>

</form>
<hr>

<jsp:include page="../../footer.jsp"/>
    