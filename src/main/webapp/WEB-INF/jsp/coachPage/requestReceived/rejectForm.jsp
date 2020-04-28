<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<form action='reject' method='post'>
  <h1>거절사유</h1>
  <h3>*** 회원님의 요청을 거절하신 이유를 구체적으로 작성해 주세요.</h3>
  <textarea name='title' rows='5' cols='60'>${coach.introduce}</textarea><br>
  <br>
  <button>거절하기</button>
<hr>
</form>

<jsp:include page="../../footer.jsp"/>
    