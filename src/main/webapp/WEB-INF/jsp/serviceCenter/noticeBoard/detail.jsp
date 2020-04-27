<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>공지사항</h1>
<form action='list' method='get' enctype='multipart/form-data'>
보낸날짜: 2020-06-09 <br>
날짜: 2020-04-02 ~ 2020-06-09<br>
제목: 긴급공지사항.<br>
내용: 코로나19로 인한 마스크착용 부탁드립니다..
감사합니다.<br>
<p><a href='delete'>삭제</a> 
<a href='updateForm'>수정</a></p>
<p><button>확인</button>
</form>

<jsp:include page="../../footer.jsp"/>
    