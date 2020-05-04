<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
코치이름: ${detail.coach.name} <br>
프로그램명: ${detail.programName}
<br>
내용 : <br>
${detail.plan} <br>
<c:forEach items="${detail.files}" var="file">
	<c:if test="${file.fileType eq 'image'}">
	  <img src='${pageContext.servletContext.contextPath}/upload/calendarFile/${file.path}' height='60'>
  </c:if>
</c:forEach>

<br>
<button type="button" onclick="location.href='updateForm'">수정</button>

<jsp:include page='../../footer.jsp'/>