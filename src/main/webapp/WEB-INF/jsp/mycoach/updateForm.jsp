<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>회원 정보수정</h1>
<form action='update' method='post' enctype='multipart/form-data'>
아이디 <input name='no' type='text' readonly value='${member.no}'><br>
이름 <input name='name' type='text' value='${member.name}'><br>
여성 <input name='name' type='checkbox' value='${member.name}'> 남성 <input name='name' type='checkbox' value='${member.name}'><br>
생년월일<input name='email' type='date' value='${member.email}'><br>
전화: <input name='tel' type='tel' value='${member.tel}'><br>
E-mail<input name='email' type='email' value='${member.email}'><br>
현재 비밀번호<input name='password' type='password'><br>
새 비밀번호<input name='password' type='password'><br>
새 비밀번호 확인<input name='password' type='password'><br>
<p><button>수정</button>
</form>

<jsp:include page="../footer.jsp"/>
    