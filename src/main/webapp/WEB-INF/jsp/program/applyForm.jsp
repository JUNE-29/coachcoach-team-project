 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>프로그램 신청서</h1>
<h3>[인적사항]</h3>
이름: ${member.name}<br>
성별: ${member.gender}<br>
생년월일: ${member.birth}<br>
연락처: ${member.tel}<br>
특이사항: <br>
<h3>[프로그램 세부사항]</h3>
프로그램명: ${program.name}<br>
운동 시작일: 1<br>
<a href='updateForm'>수정하기</a>
<a href='apply'>신청하기</a>
<jsp:include page="../footer.jsp"/>
