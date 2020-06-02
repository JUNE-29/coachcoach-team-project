 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
</style>

<div class="box pro_div" >
<p class="title">마이코치</p>
<hr style="margin-top: 5px 0px 25px 0px;">
 <label style="font-weight:bold; font-size:20px; color:#01b1d7">진행중인 프로그램 항목</label>
  <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">담당코치</th>
      <th scope="col">프로그램명</th>
      <th scope="col">기간</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${program}" var="pg">
    <tr>
      <th scope="row">${pg.mcp.no}</th>
      <td>${pg.coach.name}</td>
      <td>${pg.name}</td>
      <td>${pg.mcp.startDate} ~ ${pg.mcp.endDate}</td>     
      <td><button class="detailBtn btn btn-outline-primary btn-sm" value="${pg.coach.no}" data-no="${pg.coach.no}" type="button" data-toggle="modal" data-target="#detailModal">
      상세보기
      </button>
     </td>  
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>
<div class="paginationWrap" style="margin-top:50px">
<ul class="btn-group pagination">
    <c:if test="${pageMaker2.prev}">
    <li>
        <a href='list?page=${pageMaker2.startPage-1}'><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker2.startPage}" end="${pageMaker2.endPage}" var="pageNum">
    <li>
        <a href='list?page=${pageNum}'><i class="fa">${pageNum}</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker2.next && pageMaker.endPage>0}">
    <li>
        <a href='list?page=${pageMaker2.endPage+1}'><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>
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
      <div class="detail-modal-body">
            <div id="detail-inner-modal">
                   <div id='detail-inner-photo'>
                   <img id="detail-inner-photo-img">
                   </div>
                   <div id='detail-inner'>
                   </div>
             </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>










<div class="pro_div">
<label style="font-weight:bold; font-size:20px; ">완료된 프로그램 항목</label>
  <table class="table table-hover">
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
      <div id="review-inner-modal">
      <p id="review_title" style="font-size:large;"> 코치에게 후기를 남겨주세요</p>
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
          <div class="form-group purple-border">
          <label for="exampleFormControlTextarea4"></label>
          <input id="programNo" type='hidden' value='${no}'>
          <textarea class="form-control" id="review" rows='5' cols='50' placeholder='프로그램을 진행하면서 어떤것이 좋았나요?'></textarea><br>
            </div>
        </form>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button id="regBtn" type="button" class="btn btn-primary">등록</button>
      </div>
    </div>
  </div>
</div>