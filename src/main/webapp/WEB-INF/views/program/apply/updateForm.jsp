 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="innerCont">
<div class="leftArea">
<form id="applyUpdate" action='update' method='post'>
<strong>신청서 수정</strong><br>
<hr>
  <div class="form-group row">
    <label for="no" class="col-sm-2 col-form-label">신청번호</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.no}">
    </div>
  </div>
  <div class="form-group row">
    <label for="name" class="col-sm-2 col-form-label">이름</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.member.name}">
    </div>
  </div>
  <div class="form-group row">
    <label for="birth" class="col-sm-2 col-form-label">생년월일</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.member.birth}">
    </div>
  </div>
  <div class="form-group row">
    <label for="tel" class="col-sm-2 col-form-label">연락처</label>
    <div class="col-sm-10">
      <input  id="tel"  type="text" readonly class="form-control-plaintext"  value="${program.member.tel}">
    </div>
  </div>
  <div class="form-group row">
    <label for="programName" class="col-sm-2 col-form-label">프로그램명</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.programName}">
    </div>
  </div>
   <div class="form-group row">
    <label for="startDate" class="col-sm-2 col-form-label">시작일*</label>
    <div class="col-sm-10">
      <input id="startDate" name='startDate' type="date" class="form-control" placeholder='예) 2021-05-01' onchange='chk_date()' >
    </div>
  </div>
   <div class="form-group row">
    <label for="remark" class="col-sm-2 col-form-label">특이사항</label>
    <div class="col-sm-10">
      <input id="remark" name='remark' type="text" class="form-control" placeholder='코치에게 알려줄 정보를 입력해주세요.'>
    </div>
  </div>
  * 모든 프로그램은 한달 단위로 진행됩니다.<br>
<hr>
<button id="updatebtn"  class="leftbtn">수정</button>
<input name='applyNo' id='applyNo' type='hidden' value='${program.no}'>
</form>
</div>
</div>
