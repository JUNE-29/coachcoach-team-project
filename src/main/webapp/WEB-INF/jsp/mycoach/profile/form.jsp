applyList.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>내 프로필</h1>
<img src='/upload/member/${member.photo}' height='100'>
<form action='updateForm' method='post' enctype='multipart/form-data'>
<input type='file' name='photoFile'> 링크<br>
</form>
<label>아이디: ${member.id}</label><br>
<label>이메일: ${member.email}</label>

<jsp:include page="../footer.jsp"/>
