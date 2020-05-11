<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <h1>프로그램관리</h1>
  <form action='addForm' method='post'>
   <input name='coachNo' type='hidden' value='${coachNo}'>
   <button>새 프로그램 등록하기</button> 
   </form>
  <table border='1'>
  <tr>
    <th style="text-align:center">번호</th>
    <th style="text-align:center">프로그램명</th>
    <th style="text-align:center">자세히보기</th>
    <th style="text-align:center">수정</th>
    <th style="text-align:center">삭제</th>
  </tr>

<c:forEach items="${list}" var="item">
  <tr>
  <td align=center>${item.no}</td>
  <td align=center>${item.name}</td>
  <th ><a href= 'detail?programNo=${item.no}'>자세히보기</a></th>
  <th><a href= 'updateForm?programNo=${item.no}'>수정하기</a></th>
  <th><a href= 'delete?programNo=${item.no}'>삭제</a></th>
  </tr>
  </c:forEach>
  </table>
<hr>

