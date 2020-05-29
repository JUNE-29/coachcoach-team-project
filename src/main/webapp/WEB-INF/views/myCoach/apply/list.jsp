 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  &nbsp신청내역
<hr style="margin-top: 5px;">
  <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">코치님</th>
      <th scope="col">프로그램명</th>
      <th scope="col">결제금액</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
    <tr>
      <td scope="row">${list.no}</td>
      <td>${list.coach.name}</td>
      <td>${list.programName}</td>
      <td>${list.fee}원</td>
  <c:set var="status" value="${list.status}" />
  <c:choose>
    <c:when test="${status eq '결제대기중'}">
    <td>
    <button type="button" onclick="location.href='orderForm?no=${list.no}'" class="btn btn-outline-primary btn-sm" >결제하기</button>
    </td>
  </c:when>
  <c:when test="${status eq '요청거절됨'}">
    <td>
    <button class="rejectBtn btn btn-outline-primary btn-sm" value="${list.no}" type="button" data-toggle="modal" data-target="#rejectModal">
         거절사유
      </button>
    </td>
    </c:when>
      <c:when test="${status eq '요청대기중'}">
    <td>요청대기중 | 
    <button class="calcel_btn btn btn-outline-danger btn-sm" value="${list.no}" type="button">삭제</button>
    </td>
    </c:when>
  <c:otherwise>
    <td>${list.status}</td>
  </c:otherwise>
  </c:choose>
    </tr>
  </tbody>
  </c:forEach>
</table>
</div>


<!-- 거절사유 Modal -->
<div class="modal fade" id="rejectModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">코치님이 보낸 메세지</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="reject-modal-body" style="text-align:center;">
      <div id="reject_modal" style='text-align:center; margin:20px; padding:20px 10px 10px 10px; width:450px; height:200px; border:2px solid #01b1d7; border-radius:20px;'></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
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


