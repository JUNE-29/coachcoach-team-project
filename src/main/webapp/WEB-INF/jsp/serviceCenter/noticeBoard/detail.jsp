<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>공지사항 상세정보</h1>

<form action='update' method='post' enctype='multipart/form-data'>

번호: ${noticeBoard.no}<br> 
제목: ${noticeBoard.title}<br>
등록일:${noticeBoard.date}<br>
사진: <br>
<img src='${pageContext.request.getContextPath()}/upload/notice/${noticeBoard.file_path}'><br>
<p><a href='delete?no=${noticeBoard.no}'>삭제</a> 
<p><a href='updateForm?no=${noticeBoard.no}'>변경</a>
</form>

<jsp:include page="../../footer.jsp"/>
  
