<%@page import="com.coachcoach.domain.Coach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>코치 정보수정</h1>
<form action='modify' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' value='${coach.no}'><br>
<label>아이디</label><input name='id' type='text' readonly value='${coach.id}'><br>
<label>이름</label> <input name='name' type='text' value='${coach.name}'><br>
여자<input type="radio" name="gender" value="0" <c:if test="${coach.gender eq '0'}">checked</c:if>>
남자<input type="radio" name="gender" value="1" <c:if test="${coach.gender eq '1'}">checked</c:if>><br>
<label>생년월일</label><input name=birth type='text' value='${coach.birth}'><br>
<label>전화</label><input name='tel' type='tel' value='${coach.tel}'><br>
<label>E-mail</label><input name='email' type='email' value='${coach.email}'><br>
<label>새 비밀번호</label><input name='updatePassword' type='password'><br>
<label>새 비밀번호 확인</label><input name='updatePassword' type='password'><br>
<p><button>수정</button>
</form>
<br>
<form action='withdrawalForm' method='get'>
<button>탈퇴</button>
</form>
<br>

    