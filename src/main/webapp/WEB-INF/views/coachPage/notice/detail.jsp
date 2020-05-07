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
		<form action="delete" method="post">
		  <input type="hidden" value="${detail.no}" name="no">
		  <button>삭제</a> 
		</form>
	</div>
	
	<div class="col-md-2">
		<form action="updateForm" method="post">
		  <input type="hidden" value="${detail.no}" name="no">
		  <button>변경</a> 
		</form>
	</div>
</div>
<br>
<button onclick="location.href='list'" >확인</button>

<hr>

    