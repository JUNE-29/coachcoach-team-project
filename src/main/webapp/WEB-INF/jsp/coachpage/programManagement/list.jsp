<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>프로그램관리</h1>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>수업가능지역</th>
    <th>회원수</th>
    <th>자세히보기</th>
    <th>수정</th>
    <th>삭제</th>
  </tr>
  
  <tr>
    <th>1</th>
    <th>서울, 경기</th>
    <th>5명</th>
    <th><button type="button" onclick="location.href='detail'">자세히보기</button></th>
    <th><button type="button" onclick="location.href='updateForm'">수정</button></th>
    <th><button type="button" onclick="location.href='delete'">삭제</button></th>
  </tr>

  </table>
  <form action='add' method='get'>
  <a href='addForm' onclick="location.href='addForm'">새 프로그램 등록하기</a><br>
  </form>
<hr>

<jsp:include page="../../footer.jsp"/>