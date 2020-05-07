<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>프로필 수정</h1>

<form action='update' method='POST' enctype='multipart/form-data'>
	<input type='hidden' name='no' value=${coach.no}><br>
	<img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' height='70'><br>
	<input type='file' name='photoFile'><br>
	
	<table>
	
	<tr><td>이름</td> <td><input name='name' readonly type='text' value='${coach.name}'></td></tr>
	<tr><td>수업가능지역</td> <td><textarea name='area' rows='5' cols='60'>${coach.area}</textarea></td></tr>
	<tr><td>경력사항</td> <td><textarea name='career' rows='5' cols='60'>${coach.career}</textarea></td></tr>
	<tr><td>보유자격증</td> <td><textarea name='certification' rows='5' cols='60'>${coach.certification}</textarea></td></tr>
	<tr><td>강사소개</td> <td><textarea name='introduce' rows='5' cols='60'>${coach.introduce}</textarea></td></tr>
	
	</table>
	<button>내 프로필 수정</button>
</form>

