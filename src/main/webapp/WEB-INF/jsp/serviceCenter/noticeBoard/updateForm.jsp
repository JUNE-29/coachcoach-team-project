<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp"/>

<form action='update' method='post'>
번호: <input name='no' readonly type='text' value='${noticeBoard.no}'><br>
제목: <input name='title' type='text'value=${noticeBoard.title}> <br>
등록일: ${noticeBoard.date}<br>
조회수: ${noticeBoard.viewCount}<br>
<button>변경</button>
</form>

<jsp:include page="../../footer.jsp"/>