 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="innerCont">
<div class="leftArea">
<form action='updateForm' method='post'>
<strong>신청서 확인</strong><br>
<hr>
  <div class="form-group row">
    <label for="no" class="col-sm-2 col-form-label">번호</label>
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
  <div class="form-group row">
    <label for="programName" class="col-sm-2 col-form-label">프로그램명</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.programName}">
    </div>
  </div>
    <div class="form-group row">
    <label for="startDate" class="col-sm-2 col-form-label">시작일</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.startDate} 일">
    </div>
  </div>
      <div class="form-group row">
    <label for="endDate" class="col-sm-2 col-form-label">종료일</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext"  value="${program.endDate} 일">
    </div>
  </div>
      <div class="form-group row">
    <label for="etc" class="col-sm-2 col-form-label">특이사항</label>
    <div class="col-sm-10">
    <c:set var="remark" value="${program.remark}" />
    <c:if test="${not empty remark}">
      <input type="text" readonly class="form-control-plaintext"  value="${program.remark}">
    </c:if>
    <c:if test="${empty remark}">
          <input type="text" readonly class="form-control-plaintext"  value="없음">
     </c:if>
    </div>
  </div>
  <hr>
<button class="graybtn">수정</button>
<input name='applyNo' type='hidden' value='${program.no}'>
</form>
<button id="apply_btn"  type="button" class="bluebtn">신청하기</button>
</div>
</div>

