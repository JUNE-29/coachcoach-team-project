<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>공지사항</h1>

<form action='update' method='post'>
번호: ${noticeBoard.no}<br>
제목: ${noticeBoard.title}<br>
등록일: ${noticeBoard.date}<br>
조회수: ${noticeBoard.viewCount}<br>

<p><a href='delete?no=${noticeBoard.no}'>삭제</a> 
<a href='updateForm?no=${noticeBoard.no}'>수정</a></p>
<p><button>확인</button>
</form>

<jsp:include page="../../footer.jsp"/>
  