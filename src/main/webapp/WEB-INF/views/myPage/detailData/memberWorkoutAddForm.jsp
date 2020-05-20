<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>운동을 입력해주세요</h3>
<form action='memberWorkoutAdd' method='post'>
<input name ='memberNo' value='${memberNo}' type='hidden'>

<p>날짜를 선택해주세요.</p>
운동 시작일: <input name='workoutDate' type='date'><br>
<br>
<p>오늘의 체중을 입력해주세요.</p>
<input name='weight' type='text'>Kg<br>
<br>
<p>오늘의 걸음수를 입력해주세요.</p>
<input name='walkCount' type='text'><br>

<c:forEach  begin="1" end="3" >
  <table>
    <tr>
  <td>운동종목</td>
  <td>
    <select name="workoutNo" >
    <c:forEach items="${list}" var="workout"> 
       <option value="${workout.workoutNo}">${workout.name}</option>
     </c:forEach>
    </select>
  </td>
    </tr>
    
    <tr>
      <td>운동시간</td>
      <td><select name="unit" >
      <option value="10">10</option>
      <option value="20">20</option>
      <option value="30">30</option>
      <option value="40">40</option>
      <option value="50">50</option>
      <option value="60">60</option>
      <option value="70">70</option>
      <option value="80">80</option>
      <option value="90">90</option>
      <option value="100">100</option>
      <option value="120">120</option>
      <option value="150">150</option>
      <option value="180">180</option>
      <option value="210">210</option>
      
    </select> 
    </td>
    </tr>
</table>
</c:forEach>



<br>

<button>저장</button>
</form>

