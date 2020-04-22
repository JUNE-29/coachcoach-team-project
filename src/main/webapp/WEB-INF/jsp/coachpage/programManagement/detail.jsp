<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>
<form action='detail' method='post'>
  <h1>프로그램 자세히 보기</h1>

  프로그램명 <br>
  프로그램 소개 <br>
  수업효과 키워드 <br>
  프로그램 수강료 <br>
  
  <button type="button" onclick="location.href='list'">확인</button>

</form>
<hr>

<jsp:include page="../../footer.jsp"/>