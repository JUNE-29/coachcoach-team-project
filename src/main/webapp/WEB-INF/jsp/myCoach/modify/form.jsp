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
<label>이름</label> <input name='name' type='text' readonly value='${member.name}'><br>
여자<input type="radio" name="gender" value="0"  onclick="return(false);" <% if ("0".equals(String.valueOf(member.getGender()))) out.print("checked"); %>>
남자<input type="radio" name="gender" value="1"  onclick="return(false);" <% if ("1".equals(String.valueOf(member.getGender()))) out.print("checked");%>><br>
<label>생년월일</label><input name=birth type='text' readonly value='${member.birth}'><br>
<label>전화</label><input name='tel' type='tel' value='${member.tel}'><br>
<label>E-mail</label><input name='email' type='email' value='${member.email}'><br>
<label>새 비밀번호</label><input id='pw' name='updatePassword' type='password' onchange='isSame()'><br>
<label>새 비밀번호 확인</label><input id='pwCheck' name='updatePassword' type='password' onchange='isSame()'><br>
<span id='same'></span><br>
<button>수정</button>
</form><button onclick="location.href='withdrawForm?no=${member.no}'" >탈퇴</button>
<!-- 
<form action='withdrawForm' method='post'>
<input name='no' type='hidden' value='${member.no}'><br>
<button>탈퇴</button>
</form>
<br>
 -->
<script>
"use strict"

function isSame() {
  var pw = document.getElementById("pw").value;
  var comfirmPW = document.getElementById("pwCheck").value;
  
  if (pw.length < 8){
	  alert("비밀번호는 8자이상 사용가능합니다.")
  } 
  
  if (document.getElementById("pw").value!='' && document.getElementById("pwCheck").value!=''){
	  if (document.getElementById("pw").value==document.getElementById("pwCheck").value){
		  document.getElementById("same").innerHTML='비밀번호가 일치합니다.';
		  document.getElementById("same").style.color='blue';
	  } else {
	      document.getElementById("same").innerHTML='비밀번호가 일치하지 않습니다.';
	      document.getElementById("same").style.color='red';
	  }
  }
}


</script>


<jsp:include page="../footer.jsp"/>
    