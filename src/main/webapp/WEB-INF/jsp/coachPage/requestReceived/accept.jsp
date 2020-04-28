<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h1>수락하셨습니다.</h1>

<button type="button" onclick="location.href='list?coachNo='${coachNo}">확인</button>

<jsp:include page='../../footer.jsp'/>
    