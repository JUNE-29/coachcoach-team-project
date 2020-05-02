<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>Diet Diary</h3>
<form action='update' method='post'>
<input name ='memberNo' value='${member.no}' type='hidden'>

<p>날짜를 선택해주세요.</p>
강의 시작일: <input name='workoutDate' type='date'><br>

<p>오늘 걸음수를 입력해주세요.</p>
<input name='walkCount' type='text'><br>


<button>변경</button>
</form>

<jsp:include page='../../footer.jsp'/>