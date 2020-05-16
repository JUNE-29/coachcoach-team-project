<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>공지사항</h1>
프로그램명: ${detail.programName} <br>
보낸 회원 목록: <c:forEach items="${detail.members}" var="member">${member.name}님 </c:forEach><br>
등록일: ${detail.createdDate}<br>
제목: ${detail.title}<br>
내용: <div>${detail.content}</div><br>
<div class="row">
	<div class="col-md-2">
    <form class='delete-notice' method='post'>
      <input name='no' value='${detail.no}' type='hidden'>
      <button type='button' class='btn btn-danger'>삭제</button>
    </form>
	</div>
	
	<div class="col-md-2">
		<form class='update-notice' method="post">
		  <input value="${detail.no}" name="no" type="hidden" >
		  <button type='button' class='btn orange-button-detail'>변경</button> 
		</form>
	</div>
</div>
<hr>
<a href='list' >뒤로 가기</a>


    