 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../header.jsp"/>

<h1>프로그램 확인</h1>
<h3>[회원정보]</h3>
이름: ${member.name}<br>
성별: ${member.gender}<br>
생년월일: ${member.birth}<br>
연락처: ${member.tel}<br>
특이사항:${program.remark}<br> 

<h3>[프로그램 세부사항]</h3>
프로그램명: <br>
운동 시작일: <fmt:formatDate value="${program.startDate}" pattern="yyyy.MM.dd" /><br>
운동 종료일: <fmt:formatDate value="${program.endDate}" pattern="yyyy.MM.dd" /><br>
<button type="button" onclick="location.href='list.jsp'">확인</button>

<jsp:include page="../footer.jsp"/>
