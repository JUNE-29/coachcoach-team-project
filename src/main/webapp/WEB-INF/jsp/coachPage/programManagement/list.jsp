<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>프로그램관리</h1>
  <form action='addForm' method='post'>
   <input name='coachNo' type='hidden' value='${coachNo}'>
   <button>새 프로그램 등록하기</button> 
   </form>
  <table border='1'>
  <tr>
    <th style="text-align:center">번호</th>
    <th style="text-align:center">수업가능지역</th>
    <th style="text-align:center">자세히보기</th>
    <th style="text-align:center">수정</th>
    <th style="text-align:center">삭제</th>
  </tr>

<c:forEach items="${list}" var="item">
  <tr>
  <td align=center>${item.no}</td>
  <td align=center>${item.name}</td>
  <th ><a href= 'detail?programNo=${item.no}'>자세히보기</a></th>
  <th><button type="button" onclick="location.href='updateForm'">수정</button></th>
  <th><button type="button" onclick="location.href='delete'">삭제</button></th>
  </tr>
  </c:forEach>
  </table>
<hr>

<jsp:include page="../../footer.jsp"/>