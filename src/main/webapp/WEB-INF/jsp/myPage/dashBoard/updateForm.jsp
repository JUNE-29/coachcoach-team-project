<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>TODOLIST</h3>
<form action='add' method='post'>
메모: <input name='memo' type='text'><br>

<textarea name='contents' rows='20' cols='100'></textarea><br>
<button>수정</button>
</form>

<jsp:include page='../../footer.jsp'/>