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
<form name="modify_frm"   style="margin:0px 0px  36px 0px;">
<input id="no" name='no' type='hidden' readonly value='${member.no}'><br>
<div class="form-group"  >
<label for="updatePassword" style="width:145px; ">아이디</label>${member.id}
  </div>
  <div class="form-group"  >
<label for="updatePassword" style="width:145px; ">이름</label>${member.name}
  </div>
<div class="form-group"  ><label for="updatePassword" style="width:140px; ">성별</label>
여자<input type="radio" name="gender" value="0"  onclick="return(false);" <% if ("0".equals(String.valueOf(member.getGender()))) out.print("checked"); %>>
남자<input type="radio" name="gender" value="1"  onclick="return(false);" <% if ("1".equals(String.valueOf(member.getGender()))) out.print("checked");%>>
  </div>
<div class="form-group"  >
<label for="updatePassword" style="width:145px; ">생년월일</label>${member.birth}
  </div>
<div class="form-group"  >
<label for="updatePassword" style="width:120px; ">전화번호</label>
    <input  id='tel'  name='tel'  type="text"   class="form-control mx-sm-3"  value="${member.tel}" style="width:300px; display:inline">
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
<div class="form-group"  >
<label for="updatePassword" style="width:120px; ">이메일</label>
    <input  id='email'  name='email'  type="email"  class="form-control mx-sm-3"  value="${member.email}" style="width:300px; display:inline">
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
<div class="form-group"  >
    <label for="updatePassword" style="width:120px; ">새 비밀번호</label>
    <input  id='pw'  name='updatePassword'  type="password"  id="inputPassword5"  class="form-control mx-sm-3" onchange='isSame()' style="width:300px; display:inline">
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
  <div class="form-group"  >
    <label for="updatePassword"  >새 비밀번호 확인</label>
    <input  id='pwCheck'  name='updatePassword'  type="password"  id="inputPassword5"  class="form-control mx-sm-3" onchange='isSame()' style="width:300px; display:inline">
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
<input type="button"  id="modify_btn" class="leftbtn" value="수정">
</form><button class="rightbtn" onclick="location.href='withdrawForm?no=${member.no}'" >탈퇴</button>
<!-- 
<form action='withdrawForm' method='post'>
<input name='no' type='hidden' value='${member.no}'><br>
<button>탈퇴</button>
</form>
<br>
 -->
