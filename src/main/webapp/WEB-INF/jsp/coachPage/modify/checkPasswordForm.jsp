<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h3>비밀번호 재확인</h3>
<c:if test= '${message ne null}'>
  <h4>${message}</h4><br>
</c:if>

<form action='checkPassword' method='post'>
비밀번호 <input name='password' type='password'><br>
<button>확인</button>
</form>
<br>


<!-- 비밀번호 불일치 페이지 만들기 -->
<jsp:include page="../../footer.jsp"/>
    