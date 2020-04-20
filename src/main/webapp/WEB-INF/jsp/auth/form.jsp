<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../header.jsp"/>

<h1>로그인</h1>
<form action='login' method='post'>
ID: <input name='id' type='text'><br>
password: <input name='password' type='password'><br>
<button>로그인</button>
</form>

<jsp:include page="../footer.jsp"/>