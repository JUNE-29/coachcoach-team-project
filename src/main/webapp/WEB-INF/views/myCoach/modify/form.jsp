<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@page import="com.coachcoach.domain.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
Member member = (Member) request.getAttribute("member");
%>  


<h3>>회원 정보수정</h3>
<form action='modify' method='post' enctype='multipart/form-data' onsubmit='return frmsubmit();'>
<input name='no' type='hidden' readonly value='${member.no}'><br>
아이디<input class="form-control form-control-sm" name='id' type='text' readonly value='${member.id}'><br>
이름<input class="form-control form-control-sm" name='name' type='text' readonly value='${member.name}'><br>
여자<input type="radio" name="gender" value="0"  onclick="return(false);" <% if ("0".equals(String.valueOf(member.getGender()))) out.print("checked"); %>>
남자<input type="radio" name="gender" value="1"  onclick="return(false);" <% if ("1".equals(String.valueOf(member.getGender()))) out.print("checked");%>><br>
생년월일<input class="form-control form-control-sm" name=birth type='text' readonly value='${member.birth}'><br>
전화<input class="form-control form-control-sm" name='tel' type='tel' value='${member.tel}'><br>
E-mail<input class="form-control form-control-sm" name='email' type='email' value='${member.email}'><br>
새 비밀번호<input class="form-control form-control-sm" id='pw' name='updatePassword' type='password' onchange='isSame()'><br>
새 비밀번호 확인<input class="form-control form-control-sm" id='pwCheck' name='updatePassword' type='password' onchange='isSame()'><br>
<span id='same'></span><br>
<button class="btn btn-primary">수정</button>
</form><button class="btn btn-primary" onclick="location.href='withdrawForm?no=${member.no}'" >탈퇴</button>
<!-- 
<form action='withdrawForm' method='post'>
<input name='no' type='hidden' value='${member.no}'><br>
<button>탈퇴</button>
</form>
<br>
 -->
