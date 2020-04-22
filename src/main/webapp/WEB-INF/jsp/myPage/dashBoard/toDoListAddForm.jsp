<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>toDoList</h3>
<form action='toDoListAdd' method='post'>
<input type='text' name='content'>엇쩌구...저쩌구...하기...
<button type="button" onclick="location.href='list'">확인</button>
</form>

<jsp:include page='../../footer.jsp'/>