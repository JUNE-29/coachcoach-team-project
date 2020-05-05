<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>TODOLIST</h3>

<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${member.no}'>
      <button>등록하기</button>
   </form>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">메모</th>
        <th style="text-align:ceter">날짜</th>
        <th style="text-align:ceter">수정</th>
        <th style="text-align:ceter">삭제</th>
      </tr>
      
   <c:forEach items="${findAll}" var="item">
      <tr>
        <td align=center>${item.memo}</td>
        <td align=center>${item.createDate}</td>
        
        <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
        <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
  </table>


