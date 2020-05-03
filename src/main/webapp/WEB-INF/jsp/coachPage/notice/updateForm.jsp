<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../../header.jsp"/>

<form action='update' method='post'>
<h1>공지사항 수정</h1>
<input name='no' type='hidden' value='${detail.no}'><br>
프로그램명: ${detail.programName}<br>
제목: <input name='title' type='text' value='${detail.title}' cols='60'> <br>
내용: <textarea name='content' rows='5' cols='60'>${detail.content}</textarea><br>

<button>수정</button>
</form>


<jsp:include page="../../footer.jsp"/>