<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>TODOLIST</h3>
<form action='toDoListUpdate' method='post'>
메모: <textarea name='memo' rows='10' cols='50'></textarea><br>
<input name='createDate' value='${today}' type='hidden'><br>
<button>수정</button>
</form>

<jsp:include page='../../footer.jsp'/>