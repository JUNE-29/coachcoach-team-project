<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>오늘의 체중을 입력해주세요</h3>
<form action='weightAdd' method='post'>
<input name ='memberNo' value='${member.no}' type='hidden'>

<p>체중</p>
<input name='weight' type='text'>kg<br>

<p>측정일</p>
<input name='measureDate' type='date'><br>

<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>