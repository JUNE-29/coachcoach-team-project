<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  
   <h1>나의 운동 내역 </h1>
   <h2>운동을 입력하세요 </h2>
   <form action='addForm' method='post'>
      <input name='memberNo' type='hidden' value='${memberNo}'>
      <button>등록하기</button>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">번호</th>
        <th style="text-align:ceter">시행날짜</th>
        <th style="text-align:ceter">몸무게</th>
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
        <th ><a href= 'updateForm?workoutListNo=${item.no}'>수정</a></th>
        <th ><a href= 'delete?workoutListNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
  </table>
  </form>
  <br>
  <br>


