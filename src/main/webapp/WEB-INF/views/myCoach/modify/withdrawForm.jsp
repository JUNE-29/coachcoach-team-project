<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<p class="title">회원 탈퇴</p>
<hr style="margin-top: 5px;">
<form class="form-inline " action='withdrawConfirm' method='post'  enctype='multipart/form-data'>
<input name='no' type='hidden' value='${member.no}'><br>
  <div class="form-group"  >
    <label for="inputPassword5"  style="width:64px;">아이디</label>
    <input  name='id'  type="text"  id="inputPassword5"  class="form-control mx-sm-3" >
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
  <div style="width:300px;">
  </div>
    <div class="form-group "  style="margin-top: 5px;">
    <label  for="inputPassword6" >비밀번호</label>
    <input  name='password'  type="password" id="inputPassword6"  class="form-control mx-sm-3" >
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div><br>
    <button id="checkpwdbtn">확인</button>
</form><br>
※ 회원탈퇴를 위해 아이디, 비밀번호를 입력해주세요
<br>

