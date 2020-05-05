<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../../header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  
   <h1>나의운동내역 </h1>
   <form action='addForm' method='post'>
      <input name='memberNo' type='hidden' value='${memberNo}'>
      <button>등록하기</button>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">번호</th>
        <th style="text-align:ceter">시행날짜</th>
        <th style="text-align:ceter">걸음수</th>
        <th style="text-align:ceter">비고</th>
        <th style="text-align:ceter">수정</th>
        <th style="text-align:ceter">삭제</th>
      </tr>
      
   <c:forEach items="${list}" var="item">
      <tr>
        <td align=center>${item.no}</td>
        <td align=center>${item.workoutDate}</td>
        <td align=center>${item.walkCount}</td>
        <td align=center>${item.etc}</td>
        <th ><a href= 'updateForm?workoutListNo=${item.no}'>수정</a></th>
        <th ><a href= 'delete?workoutListNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
  </table>
  </form>
  <br>
  <br>
  
  <jsp:include page='weightList.jsp'/>

  
  <br>
  <br>

    <jsp:include page='workoutGraph.jsp'/>

    <jsp:include page="../../footer.jsp"/>