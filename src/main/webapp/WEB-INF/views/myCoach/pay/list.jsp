 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  &nbsp결제내역
<hr style="margin-top: 5px;">
  <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">코치님</th>
      <th scope="col">결제완료일</th>
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
      <td>${list.mcp.payDate}</td>
      <td>${list.name}</td>
      <td>${list.fee}</td>     
    <td>${list.mcp.status}</td>
    </tr>
  </c:if>
  </tbody>
  </c:forEach>
</table>
</div>

<div class="paginationWrap">
<ul class="btn-group pagination">
    <c:if test="${pageMaker.prev}">
    <li>
        <a href='list?page=${pageMaker.startPage-1}'><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
    <li>
        <a href='list?page=${pageNum}'><i class="fa">${pageNum}</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage>0}">
    <li>
        <a href='list?page=${pageMaker.endPage+1}'><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>
</div>


