 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  &nbsp결제내역
<hr style="margin-top: 5px;">
<div class="search_div"  style="float:right; margin:5px;">
  <form class="search_frm" action="search" method="GET">
      <input name='sDate' type='date'>  ~  <input name='eDate' type='date'>
      <button  style="background:#01b1d7; color:#fff; border:none ;width:50px; height:30px; border-radius:5px; ">조회</button>
    </form>
    </div>
  <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">코치님</th>
      <th scope="col">주문한 프로그램명</th>
      <th scope="col">결제완료일</th>
      <th scope="col">결제금액</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
  <c:if test="${list.status eq '결제 완료'}">
    <tr>
      <th scope="row">${list.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.programName}</td>
      <td>${list.payDate}</td>
      <td>${list.cp.fee}</td>     
    <td>${list.status}</td>
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
        <a href='search?page=${pageMaker.startPage-1}&sDate=${sDate }&eDate=${eDate}'><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
    <li>
        <a href='search?page=${pageNum}&sDate=${sDate }&eDate=${eDate}'><i class="fa">${pageNum}</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage>0}">
    <li>
        <a href='search?page=${pageMaker.endPage+1}&sDate=${sDate }&eDate=${eDate}'><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>
</div>




