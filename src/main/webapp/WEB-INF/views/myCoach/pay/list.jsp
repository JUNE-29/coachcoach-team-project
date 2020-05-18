 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  <h1>결제내역</h1>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">코치님</th>
      <th scope="col">주문한 프로그램명</th>
      <th scope="col">결제금액</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
  <c:if test="${not empty list.mcp.payDate}">
    <tr>
      <th scope="row">${list.mcp.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.name}</td>
      <td>${list.fee}</td>     
    <td>${list.mcp.status}</td>
    </tr>
  </c:if>
  </tbody>
  </c:forEach>
</table>
</div>


