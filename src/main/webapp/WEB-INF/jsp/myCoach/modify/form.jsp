<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@page import="com.coachcoach.domain.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<%
Member member = (Member) request.getAttribute("member");
%>  

<h1>회원 정보수정</h1>
<form action='modify' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' readonly value='${member.no}'><br>
<label>아이디</label><input name='id' type='text' readonly value='${member.id}'><br>
<label>이름</label> <input name='name' type='text' value='${member.name}'><br>
여자<input type="radio" name="gender" value="0" <% if ("0".equals(String.valueOf(member.getGender()))) out.print("checked"); %>>
남자<input type="radio" name="gender" value="1" <% if ("1".equals(String.valueOf(member.getGender()))) out.print("checked"); %>><br>
<label>생년월일</label><input name=birth type='text' value='${member.birth}'><br>
<label>전화</label><input name='tel' type='tel' value='${member.tel}'><br>
<label>E-mail</label><input name='email' type='email' value='${member.email}'><br>
<label>새 비밀번호</label><input name='updatePassword' type='password'><br>
<label>새 비밀번호 확인</label><input name='updatePassword' type='password'><br>
<p><button>수정</button>
</form>
<form action='withdrawForm' method='post'>
<input name='no' type='hidden' value='${member.no}'><br>
<button>탈퇴</button>
</form>
<br>


<jsp:include page="../footer.jsp"/>
    