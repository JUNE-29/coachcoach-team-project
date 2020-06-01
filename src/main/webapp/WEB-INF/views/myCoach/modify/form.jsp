<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@page import="com.coachcoach.domain.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
Member member = (Member) request.getAttribute("member");
%>  


<p class="title">회원정보수정</p>
<hr style="margin-top: 5px;">
<form name="modify_frm" >
<input id="no" name='no' type='hidden' readonly value='${member.no}'><br>
아이디<input  name='id' type='text' readonly value='${member.id}'><br>
이름<input  name='name' type='text' readonly value='${member.name}'><br>
여자<input type="radio" name="gender" value="0"  onclick="return(false);" <% if ("0".equals(String.valueOf(member.getGender()))) out.print("checked"); %>>
남자<input type="radio" name="gender" value="1"  onclick="return(false);" <% if ("1".equals(String.valueOf(member.getGender()))) out.print("checked");%>><br>
생년월일<input  name=birth type='text' readonly value='${member.birth}'><br>
전화<input  name='tel' type='tel' value='${member.tel}'><br>
E-mail<input  name='email' type='email' value='${member.email}'><br>
새 비밀번호<input  id='pw' name='updatePassword' type='password' onchange='isSame()'><br>
새 비밀번호 확인<input  id='pwCheck' name='updatePassword' type='password' onchange='isSame()'><br>
<span id='same'></span><br>
<input type="button"  id="modify_btn" class="leftbtn" value="수정">
</form><button class="rightbtn" onclick="location.href='withdrawForm?no=${member.no}'" >탈퇴</button>
<!-- 
<form action='withdrawForm' method='post'>
<input name='no' type='hidden' value='${member.no}'><br>
<button>탈퇴</button>
</form>
<br>
 -->
