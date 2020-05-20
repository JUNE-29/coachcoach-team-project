<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>Diet Diary</h3>
<form action='update' method='post'>
<input name ='no' value='${memberWorkout.memberWorkoutNo}' type='hidden'>

<p>날짜를 선택해주세요.</p>
운동 시작일: <input name='workoutDate' type='date' value='${memberWorkout.workoutDate}'><br>

<p>오늘 체중을 입력해주세요.</p>
<input name='weight' type='text' value='${memberWorkout.weight}'><br>

<p>오늘 걸음수를 입력해주세요.</p>
<input name='walkCount' type='text' value='${memberWorkout.walkCount}'><br>

<button>변경</button>
</form>

