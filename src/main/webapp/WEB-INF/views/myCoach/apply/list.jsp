 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  <h1>신청내역</h1>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">코치님</th>
      <th scope="col">신청한 프로그램명</th>
      <th scope="col">결제금액</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
    <tr>
      <th scope="row">${list.mcp.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.name}</td>
      <td>${list.fee}</td>     
 <c:set var="status" value="${list.mcp.status}" />
  <c:choose>
    <c:when test="${status eq '결제대기중'}">
    <td>
    <button type="button" onclick="location.href='orderForm?no=${list.mcp.no}'" class="btn btn-outline-primary btn-sm" >결제하기</button>
    </td>
  </c:when>
  <c:when test="${status eq '요청거절됨'}">
    <td>
    <button class="rejectBtn btn btn-outline-primary btn-sm" value="${list.mcp.no}" type="button" data-toggle="modal" data-target="#rejectModal">
         거절사유
      </button>
    </td>
    </c:when>
  <c:otherwise>
    <td>${list.mcp.status}</td>
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
        <h5 class="modal-title" id="staticBackdropLabel">거절사유</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="reject-modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>





