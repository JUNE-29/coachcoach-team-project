<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  
   <h1>나의 체중 </h1>
   <form action='weightAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${memberNo}'>
      <button>등록하기</button>
   </form>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">번호</th>
        <th style="text-align:ceter">체중</th>
        <th style="text-align:ceter">측정일</th>
        <th style="text-align:ceter">수정</th>
        <th style="text-align:ceter">삭제</th>
      </tr>
      
   <c:forEach items="${findAllByMemberNo}" var="item">
      <tr>
        <td align=center>${item.no}</td>
        <td align=center>${item.weight}</td>
        <td align=center>${item.measureDate}</td>
         <th ><a href= 'weightUpdateForm?weightNo=${item.no}'>수정</a></th>
        <th ><a href= 'weightDelete?weightNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
  </table>
