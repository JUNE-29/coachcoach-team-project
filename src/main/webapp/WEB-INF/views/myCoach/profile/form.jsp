<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>내 프로필</h3>
<div class='img'>
<img src='${pageContext.servletContext.contextPath}/upload/member/${member.photo}' height='200'><br>
<form action='updateForm' method='post' enctype='multipart/form-data'>
<input name='photoFile' type='file'><br>
</div>
<label>아이디: ${member.id}</label><br>
<label>이메일: ${member.email}</label><br>
<input name='no' type='hidden' value='${member.no}'><br>
<button>변경</button>
</form>
<button onclick="location.href='delete?no=${member.no}'" >삭제</button>
