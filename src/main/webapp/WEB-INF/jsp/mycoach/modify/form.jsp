<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>회원 정보수정</h1>
<form action='modify' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' readonly value='${member.no}'><br>
<label>아이디</label><input name='id' type='text' readonly value='${member.id}'><br>
<label>이름</label> <input name='name' type='text' value='${member.name}'><br>
<label>여성</label> <input name='gender' type='radio' value='1' checked='checked'> 남성 <input name='gender' type='radio' value='2'><br>
<label>생년월일</label><input name=birth type='text' value='${member.birth}'><br>
<label>전화</label><input name='tel' type='tel' value='${member.tel}'><br>
<label>E-mail</label><input name='email' type='email' value='${member.email}'><br>
<label>새 비밀번호</label><input name='updatePassword' type='password'><br>
<label>새 비밀번호 확인</label><input name='updatePassword' type='password'><br>
<p><button>수정</button>
</form>
<br>
<form action='withdrawForm' method='get'>
<button>탈퇴</button>
</form>
<br>


<jsp:include page="../footer.jsp"/>
    