<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>결제내역</h1>
  
  <table border='1'>
  <tr>
    <th>기간조회
    <input type = "button" value = 1주일>
    <input type = "button" value = 1개월>
    <input type = "button" value = 2개월>
    <input type = "button" value = 3개월>
    <input name='name' readonly type='text'> ~  <input name='name' readonly type='text'>
    <button>조회</button>
    </th>
  </tr>
  </table>

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

<jsp:include page="../../footer.jsp"/>