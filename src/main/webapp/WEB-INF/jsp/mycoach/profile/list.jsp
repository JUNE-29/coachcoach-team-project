applyList.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>내 프로필</h1>
<img src='/upload/member/' height='80'><br> 
<form action='add' method='post' enctype='multipart/form-data'>
<input type="button" class="" value="사진변경" onclick="">
<button type="button" class=""  onclick="">사진삭제</button>
<p>아이디: 12345</p>
<p>이메일: 123@gmail.com</p>
</form>


<jsp:include page="../footer.jsp"/>
