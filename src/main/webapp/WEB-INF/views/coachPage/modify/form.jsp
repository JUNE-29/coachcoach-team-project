<%@page import="com.coachcoach.domain.Coach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="coach-mod-background">
<div>
<h1>코치 정보수정</h1>
<form action='modify' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' value='${coach.no}'><br>
<div id='coachModForm'>
	<div id='coachMod'>
		<label for='id'>아이디</label> <br>
		<label for='name'>이름</label> <br>
		<label for='gender'>성별</label> <br>
		<label for='birth'>생년월일</label> <br>
		<label for='tel'>전화</label> <br>
		<label for='email'>E-mail</label> <br>
		<label for='updatePassword'>새 비밀번호</label> <br>
		<label for='updatePassword'>새 비밀번호 확인</label> <br>
	</div>
	<div id='coachModInput'>
		<input name='id' type='text' readonly value='${coach.id}'><br>
		<input name='name' type='text' value='${coach.name}'><br>
		
		<div>
			여자<input type="radio" name="gender" value="0" <c:if test="${coach.gender eq '0'}">checked</c:if>>
			남자<input type="radio" name="gender" value="1" <c:if test="${coach.gender eq '1'}">checked</c:if>><br>
		</div>
		
		<input name=birth type='text' value='${coach.birth}'><br>
		<input name='tel' type='tel' value='${coach.tel}'><br>
		<input name='email' type='email' value='${coach.email}'><br>
		<input name='updatePassword' type='password'><br>
		<input name='updatePassword' type='password'><br>
    <button type="submit" class="btn orange-button">수정하기</button><br><br>
    <button type="button" class="btn btn-danger">탈퇴하기</button>
	</div>
</div>
</form>
</div>
</div>

<form action='withdrawalForm' method='get'>
</form>
