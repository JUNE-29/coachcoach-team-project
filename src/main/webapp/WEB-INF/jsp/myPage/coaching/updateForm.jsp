<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
<form action='update' method='post' enctype='multipart/form-data'>
<input name="no" value="${detail.no}" type='hidden'>
회원명: ${detail.member.name}<br>
프로그램명: ${detail.programName} <br>
Workout 일정: ${detail.startDate} ~ ${detail.endDate}  <br>
<input type='Date' name='startDate'> ~ <input type='Date' name='endDate'><br>
<hr>
*첨부된 파일*
<br>
<c:forEach items="${detail.files}" var="file">
  <c:if test="${file.fileType eq 'image'}">
    <img src='${pageContext.servletContext.contextPath}/upload/calendarFile/${file.path}' height='100'>
  </c:if>
</c:forEach>
<hr>
첨부 파일: <input class="file" type='file' name='inputFiles' value=${file.path}> <br>
첨부 파일: <input class="file" type='file' name='inputFiles' value=${file.path}> <br>
첨부 파일: <input class="file" type='file' name='inputFiles' value=${file.path}> <br>
<hr>
내용: <textarea name='plan' rows='20' cols='76'>${detail.plan}</textarea><br>
<hr>
<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>