<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>결제내역</h1>
  <form action="search" method="POST">
  
    <h5>기간조회</h5>
    <button type ="submit" name = "date" value="1week">1주일</button>
    <button type ="submit" name = "date" value="1month">1개월</button>
    <button type ="submit" name = "date" value="3month">3개월</button>
    <button type ="submit" name = "date" value="6month">6개월</button>
    <br>
    <input name='sDate' type='date'>  ~  <input name='eDate' type='date'>
    <button>조회</button>

  </form>
  <br>
  
  <table border='1'>
  <tr>
    <th>주문번호</th>
    <th>회원성함</th>
    <th>주문한 프로그램명</th>
    <th>결제완료일</th>
    <th>결제금액</th>
    <th>상태</th>
  </tr>
  <c:forEach items="${list}" var="item">
    <tr>
      <th scope="row">${item.no}</th>
      <td>${item.member.name}</td>
      <td>${item.programName}</td>
      <td>${item.payDate}</td>
      <td>${item.fee}</td>     
    <td>${item.status}</td>
    </tr>
  </c:forEach>
  </table>
<hr>

<input type="button" value="계좌관리" onclick="location.href='addForm'" style="btn btn-primary">

<jsp:include page="../../footer.jsp"/>