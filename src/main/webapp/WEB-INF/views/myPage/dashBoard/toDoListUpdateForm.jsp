<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>TODOLIST</h3>
<form action='toDoListUpdate' method='post'>
<input name ='no' value='${toDoList.no}' type='hidden'>
메모: <textarea name='memo' rows='10' cols='50'></textarea><br>
날짜: <input name='createDate' value='${toDoList.createDate}' type= 'date'><br>
<button>수정</button>
</form>

