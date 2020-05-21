 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="innerCont">
<form id="applyfrm" action='update' method='post'>
<h3>신청서 수정</h3>
<h5>회원정보</h5>
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
      <input type="text" readonly class="form-control-plaintext"  value="${program.member.tel}">
    </div>
  </div>

<h5>프로그램</h5>
  <div class="form-group row">
    <label for="programName" class="col-sm-2 col-form-label">프로그램명</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.programName}">
    </div>
  </div>
   <div class="form-group row">
    <label for="startDate" class="col-sm-2 col-form-label">운동 시작일*</label>
    <div class="col-sm-10">
      <input id="startDate" name='startDate' type="text" class="form-control" placeholder='예) 2021-05-01' onchange='chk_date()' >
    </div>
  </div>
   <div class="form-group row">
    <label for="remark" class="col-sm-2 col-form-label">특이사항</label>
    <div class="col-sm-10">
      <input id="remark" name='remark' type="text" class="form-control" placeholder='코치에게 알려줄 정보를 입력해주세요.'>
    </div>
  </div>
<button id="applyBtn"  class="btn btn-secondary">수정</button>
<input name='applyNo' type='hidden' value='${program.no}'>
</form>
</div>
