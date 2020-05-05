<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
코치이름: ${detail.coach.name} <br>
프로그램명: ${detail.programName} <br>
Workout 일정: ${detail.startDate} ~ ${detail.endDate}  <br>
<hr>
내용 : <br>
${detail.plan} <br>
<c:forEach items="${detail.files}" var="file">
	<c:if test="${file.fileType eq 'image'}">
	  <img src='${pageContext.servletContext.contextPath}/upload/calendarFile/${file.path}' height='340'>
  </c:if>
</c:forEach>
<hr>
<br>
<form action='updateForm' method='post'>
<input type='hidden' name='no' value='${detail.no}'>
<button>수정</button>
</form>

<jsp:include page='../../footer.jsp'/>