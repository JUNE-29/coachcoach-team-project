 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<div>
  <h1>결제내역</h1>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">주문번호</th>
      <th scope="col">코치님</th>
      <th scope="col">주문한 프로그램명</th>
      <th scope="col">결제금액</th>
      <th scope="col">후기</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="programList">
  <tbody>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td><form action='reviewForm' method='get'>
      <td>@fat</td>
    <button>후기작성</button>
    </form></td>
    </tr>
  </tbody>
  </c:forEach>
</table>
</div>

<jsp:include page="../footer.jsp"/>
