<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>toDoList</h3>

<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${memberNo}'>
      <button>등록하기</button>
   </form>
   <table border='1'>
      <tr> 
        <th style="text-align:ceter">메모</th>
        <th style="text-align:ceter">날짜</th>
      </tr>
      
   <c:forEach items="${list}" var="item">
      <tr>
        <td align=center>${item.memo}</td>
        <td align=center>${item.createDate}</td>
        
        
        <th><button type="button" onclick="location.href='toDoListUpdate'">수정</button></th>
        <th><button type="button" onclick="location.href='toDoListDelete'">삭제</button></th>
      </tr>
  </c:forEach>
      
  </table>


