<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  
   <h1>나의운동내역 </h1>
   <form action='memberWorkoutAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${memberNo}'>
      <button>등록하기</button>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">번호</th>
        <th style="text-align:ceter">시행날짜</th>
        <th style="text-align:ceter">체중</th>
        <th style="text-align:ceter">걸음수</th>
        <th style="text-align:ceter">운동종목</th>
        <th style="text-align:ceter">운동시간</th>
        <th style="text-align:ceter">수정</th>
        <th style="text-align:ceter">삭제</th>
      </tr>
      
   <c:forEach items="${list}" var="item">
      <tr>
        <td align=center>${item.no}</td>
        <td align=center>${item.workoutDate}</td>
        <td align=center>${item.weight}</td>
        <td align=center>${item.walkCount}</td>
        <td align=center>${item.workoutUnit}</td>
        <td align=center>${item.workout}</td>
        <th ><a href= 'updateForm?memberWorkoutNo=${item.no}'>수정</a></th>
        <th ><a href= 'delete?memberWorkoutNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
  </table>
  </form>
  <br>
  <br>
