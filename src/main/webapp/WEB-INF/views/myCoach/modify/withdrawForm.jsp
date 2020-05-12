<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>회원 탈퇴</h1><br>
<h3>비밀번호 재확인</h3>
<form action='withdrawConfirm' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' value='${member.no}'><br>
아이디 <input name='id' type='text'><br>
비밀번호 <input name='password' type='password'><br>
<p><button>확인</button>
</form>
<br>


    