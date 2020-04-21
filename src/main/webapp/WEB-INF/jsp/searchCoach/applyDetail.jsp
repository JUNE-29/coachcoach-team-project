 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>프로그램 신청서</h1>
<h3>[인적사항]</h3>
이름: 홍길동<br>
성별: 남자<br>
생년월일: 1900-01-01<br>
연락처: 000-0000-0000<br>
특이사항: dsfsdf<br>
<h3>[프로그램 세부사항]</h3>
<br> 프로젝트<br>
운동 시작일: 2020-04-21
<form action='add' method='post' enctype='multipart/form-data'>
<button>수정하기</button>
</form>
<form action='add' method='post' enctype='multipart/form-data'>
<button>신청하기</button>
</form>

<jsp:include page="../footer.jsp"/>
