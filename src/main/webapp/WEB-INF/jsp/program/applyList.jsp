 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../header.jsp"/>

<h1>프로그램 확인</h1>
<h3>[회원정보]</h3>
이름: ${program.member.name}<br>
성별: ${program.member.gender}<br>
생년월일: ${program.member.birth}<br>
연락처: ${program.member.tel}<br>

<h3>[프로그램 세부사항]</h3>
프로그램명: ${program.programName}<br> 
운동 시작일 ${program.startDate}<br>
운동 종료일 ${program.endDate}<br>
<button type="button" onclick="location.href='list.jsp'">확인</button>


<jsp:include page="../footer.jsp"/>
