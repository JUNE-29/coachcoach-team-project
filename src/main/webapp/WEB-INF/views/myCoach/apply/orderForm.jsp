 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


결제정보
  <hr style="margin-top: 5px;">
<div class="order_frm" >
      <div class="coach_img">
      <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' height='150px'>
     </div>
     <dl>
      <dt>신청번호</dt>
      <dd>${item.mcp.no}</dd>
       <dt>프로그램</dt> 
       <dd> ${item.name}</dd>
       <dt>코치이름</dt>  
       <dd>${item.coach.name}</dd>
       <dt>결제금액</dt> 
       <dd> ${item.fee}원</dd>
       <dt>신청일</dt>  
       <dd>${item.mcp.requestDate}</dd>
       <dt>운동기간</dt> 
       <dd>${item.mcp.startDate} ~ ${item.mcp.endDate}</dd>
       <dt>운동장소</dt> 
       <dd> ${item.coachingType }</dd>
       <dt>특이사항</dt>
    <c:if test="${not empty item.mcp.remark}">
       <dd>${item.mcp.remark}</dd>
    </c:if>
    <c:if test="${empty item.mcp.remark}">
         <dd>없음</dd>
     </c:if>
      </dl>
  <hr style="margin-top: 5px;">
  <div class="div"></div>
     <dl>
            <dt>회원이름</dt> 
            <dd>${member.name}</dd>
            <dt>생년월일</dt>
            <dd>${member.birth}</dd>
            <dt>전화번호</dt>
            <dd> ${member.tel}</dd>
            <dt>이메일</dt> 
            <dd>${member.email}</dd>
          </dl>
</div>

  <hr style="margin-top: 5px;">
<form id="pay_frm" action='payments' name='frm' method='get'>
<input class="pay_method"  name='payment' type='radio' value='creditCard'>신용카드
<input class="pay_method"  name='payment' type='radio' value='kakaoPay'><img id="pay_img" src='${pageContext.servletContext.contextPath}/upload/img/kakaopay.png' >
<input class="pay_method"  name='payment' type='radio' value='payPhone'>휴대폰<br>
  <hr style="margin-top: 5px;">
<input id="pay_btn" type='button' value='결제하기'  onclick='payChk()'>
</form>
<button id="cancel_btn"  type="button">취소</button>
