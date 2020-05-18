 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
</style>

<div class="box">
  <h5 class="tit">진행중인 프로그램</h5>
  <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">담당코치</th>
      <th scope="col">프로그램명</th>
      <th scope="col">기간</th>
      <th scope="col">상세보기</th>
    </tr>
  </thead>
  <c:forEach items="${program}" var="pg">
  <tbody>
    <tr>
      <th scope="row">${pg.mcp.no}</th>
      <td>${pg.coach.name}</td>
      <td>${pg.name}</td>
      <td>${pg.mcp.startDate} ~ ${pg.mcp.endDate}</td>     
      <td><button id="detailBtn" value="${pg.coach.no}" data-no="${pg.coach.no}" type="button" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detailModal">
      상세보기
      </button>
     </td>  
    </tr>
  </tbody>
  </c:forEach>
</table>
</div>

<!-- 상세보기 Modal -->
<div class="modal fade" id="detailModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">코치소개</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      코치이름 ${coach.name}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button id="regBtn" type="button" class="btn btn-primary">등록</button>
      </div>
    </div>
  </div>
</div>










<div>
  <h5>완료된 프로그램</h5>
  <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">담당코치</th>
      <th scope="col">프로그램명</th>
      <th scope="col">기간</th>
      <th scope="col">후기</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
  <c:set var="status" value="${list.mcp.status}" />
  <c:if test="${status eq '진행 완료'}">
    <tr>
      <th scope="row">${list.mcp.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.name}</td>
      <td>${list.mcp.startDate} ~ ${list.mcp.endDate}</td>     
    <c:if test="${empty list.mcp.review}">
    <td>
    <form name="form">
     <input type='hidden' id='mcpno' name='no'  value='${list.mcp.no}'>
     </form>
     <button data-no="${list.mcp.no}" type="button" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#reviewModal">
      등록
     </button>
    </td>
    </c:if>
    <c:if test="${not empty list.mcp.review}">
    <td>완료</td>
    </c:if>
    </tr>
  </c:if>
  </tbody>
  </c:forEach>
</table>
</div>

<!-- 리뷰 Modal -->
<div class="modal fade" id="reviewModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">후기작성</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="reviewForm" name='frmData'>
          <span class="star-input">
           <span class="input">
                <input type="radio" name="starRate" value="1" id="p1">
                <label for="p1">1</label>
                <input type="radio" name="starRate" value="2" id="p2">
                <label for="p2">2</label>
                <input type="radio" name="starRate" value="3" id="p3">
                <label for="p3">3</label>
                <input type="radio" name="starRate" value="4" id="p4">
                <label for="p4">4</label>
                <input type="radio" name="starRate" value="5" id="p5">
                <label for="p5">5</label>
              </span>
          </span>

          <input id="programNo" type='hidden' value='${no}'>
          <textarea id="review" rows='5' cols='50' placeholder='후기를 등록해주세요!'></textarea><br>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button id="regBtn" type="button" class="btn btn-primary">등록</button>
      </div>
    </div>
  </div>
</div>