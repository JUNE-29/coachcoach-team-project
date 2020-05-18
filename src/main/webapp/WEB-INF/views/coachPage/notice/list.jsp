<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <h1><span class="highlight">공지사항 관리</span></h1>
  
  <br>
		<div class="table-responsive" style="padding-right:60px;">
		 <table class='table table-hover coach-table' id='notice-table'>
		 <thead class='table-head'>	
		  <tr>
		    <th scope="col">번호</th>
		    <th scope="col">프로그램명</th>
		    <th scope="col">회원수</th>
		    <th scope="col">제목</th>
		    <th scope="col">공지날짜</th>
		  </tr>
		  </thead>

		  <tbody>
		  <c:if test="${empty list}"> 
		   <tr>
		    <td colspan="5">아직 등록한 공지사항이 없어요!</td>
		   </tr>
		  </c:if>

		  <c:set var="i" value="0"/>

		  <c:forEach items="${list}" var="item">
		  <tr>
        <c:set var="i" value="${i+1}"/>
		    <td>
		      ${i}
		    </td>
		    <td>
		      ${item.programName}
		    </td>
		    <td>
		      ${fn:length(item.members)}명
		    </td>
		    <td>
		      <input name='no' value='${item.no}' type='hidden'>
		      <a href='#' data-toggle="modal" data-target="#updateNoticeBoard">${item.title}</a>
		    </td>
		    <td>
		      ${item.createdDate}
		    </td>
		    </tr>
		  </c:forEach>
		  </tbody>
		 </table>
	  <div class="addForm">
  	  <button type="button" class="btn orange-button" data-toggle="modal" data-target="#addNoticeBoard">공지사항 등록</button>
	  </div>
  </div>
  <br>
	
	
	<!-- Modal -->
<div class="modal fade" id="addNoticeBoard" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">공지사항 등록</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
					프로그램 선택
				<form id='addForm' action='add' method='post'>
					<select name='programNo' style='width: 353px;' onmousedown="if(this.options.length>5){this.size=5;}"  onchange='this.size=0;' onblur="this.size=0;">
					 <c:forEach items="${programList}" var="item">
					   <option value="${item.no}">${item.name}</option>
					 </c:forEach>
					</select>
					<hr>
					<div class='title-box'>
					제목 <input class="board-title" name='title' type='text' style="width:95%;">
					</div>
					<hr>
					<div class= 'content-box'>
					내용  
					<textarea class="summernote board-content" name='content'></textarea><br>
					</div>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn orange-button addFormSubmit">등록</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="updateNoticeBoard" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">공지사항</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class='updateNoticeForm'>
		      <input name='no' value='' type='hidden'>
          <div class='program-name'>
            프로그램명: 
          </div>
					<div class='members-name'>
					  보낸 회원 목록: 
          </div>
					<div class='update-date'>
					  수정일: 
          </div>
          <hr>
					<div class='title-box'>
          제목 <input class="board-title" name='title' type='text' style="width:95%;">
          </div>
          <hr>
          <div class= 'content-box' >
          내용  
          <textarea class="summernote board-content" name='content'></textarea><br>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type='button' class='btn btn-danger deleteNoticeSubmit'>삭제</button>
        <button type='button' class='btn orange-button-detail updateNoticeSubmit'>변경</button> 
      </div>
    </div>
  </div>
</div>

