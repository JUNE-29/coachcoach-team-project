<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>Diet Diary</h3>
<form action='update' method='post'>
<input name ='no' value='${workoutList.no}' type='hidden'>

<p>날짜를 선택해주세요.</p>
운동 시작일: <input name='workoutDate' type='date' value='${workoutList.workoutDate}'><br>

<p>오늘 걸음수를 입력해주세요.</p>
<input name='walkCount' type='text' value='${workoutList.walkCount}'><br>

<p>오늘 한 운동의 종목들</p><br>
<input name='etc' type='text'  value='${workoutList.etc}'><br>

<button>변경</button>
</form>

