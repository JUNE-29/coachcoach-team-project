<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>회원 탈퇴</h1><br>
<h3>비밀번호 재확인</h3>
<form action='withdrawForm2' method='post' enctype='multipart/form-data'>
아이디 <input name='name' type='text' value='${coach.name}'><br>
비밀번호 <input name='name' type='password' value='${coach.name}'><br>
<p><button>확인</button>
</form>
<br>


<!-- 비밀번호 불일치 페이지 만들기 -->
<jsp:include page="../../footer.jsp"/>
    