 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="innerCont">
<div class="leftArea">
<form id="applyfrm" action='list' method='post'>
<strong>프로그램 신청서</strong><br>
<hr>
  <div class="form-group row">
    <label for="name" class="col-sm-2 col-form-label" >이름</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${member.name}">
    </div>
  </div>
  <div class="form-group row">
    <label for="birth" class="col-sm-2 col-form-label">생년월일</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${member.birth}">
    </div>
  </div>
  <div class="form-group row">
    <label for="tel" class="col-sm-2 col-form-label">연락처</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${member.tel}">
    </div>
  </div>
  <div class="form-group row">
    <label for="tel" class="col-sm col-form-label">프로그램명</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.name}">
    </div>
  </div>
    <div class="form-group row">
    <label for="tel" class="col-sm-2 col-form-label">코칭장소</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.coachingType}">
    </div>
  </div>
      <div class="form-group row">
    <label for="tel" class="col-sm-2 col-form-label">금액</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.fee}원">
    </div>
  </div>
  <div class="form-group row">
    <label for="startDate" class="col-sm-2 col-form-label">시작일*</label>
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
* 모든 프로그램은 한달 단위로 진행됩니다.<br>
<hr>
<button id="applyBtn" class="leftbtn" >다음</button>
<input name='programNo' type='hidden' value='${program.no}'>
<input name='memberNo' type='hidden' value='${member.no}'>
</form>
<button id="frm_cancel"type="button" class="rightbtn" >취소</button>
</div>
</div>