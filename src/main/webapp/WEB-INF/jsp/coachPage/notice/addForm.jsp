<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../../header.jsp"/>

<form action='add' method='post'>
<h1>공지사항 등록</h1>
<b>날짜를 선택해주세요.</b> 
 <input name='startDate' type='date'> ~ <input name='endDate' type='date'><br>
<b>보낼 회원 목록:</b> <input name='name' type='text'><br>
<b>제목:</b> <input name='title' type='text'><br>
<textarea name='title' rows='5' cols='60'></textarea><br>

<button>등록</button>
</form>
<jsp:include page="../../footer.jsp"/>