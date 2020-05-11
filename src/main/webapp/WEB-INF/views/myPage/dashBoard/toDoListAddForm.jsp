<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<h3>TODOLIST</h3>
<form action='toDoListAdd' method='post'>
<input name ='memberNo' value='${member.no}' type='hidden'>

메모: <input name='memo' type='text'><br>
날짜: <input name='createDate' type='date' value='${createDate}'><br>

<button>저장</button>
</form>


