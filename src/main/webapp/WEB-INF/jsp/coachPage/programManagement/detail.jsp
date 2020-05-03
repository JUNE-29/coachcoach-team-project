<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>
<form action='detail' method='post'>
  <h1>프로그램 자세히 보기</h1>

<c:if test="${not empty program}">
  프로그램명: ${program.name}<br>
  프로그램 소개: ${program.introduce} <br>
  수업효과 키워드: <br>
  프로그램 수강료: ${program.fee} <br>
  프로그램타입: ${program.coachingType}<br>
  </c:if>
  
  <c:if test="${empty requestScope.program}">
  <p> 해당 프로그램이 없습니다.</p>
  </c:if>
  
  <button type="button" onclick="location.href='list'">확인</button>
</form>
<hr>

<jsp:include page="../../footer.jsp"/>