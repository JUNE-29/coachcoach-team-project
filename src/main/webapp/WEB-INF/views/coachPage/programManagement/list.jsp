<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h1><span class="highlight">프로그램관리</span></h1>
<br>


<div class="table-responsive" style="padding-right:60px;">
  <table class='coach-table table table-hover'>
  <thead class='table-head'>
	  <tr>
	    <th scope="col">번호</th>
	    <th scope="col">프로그램명</th>
	    <th scope="col">자세히보기</th>
	    <th scope="col">수정</th>
	    <th scope="col">삭제</th>
	  </tr>
  </thead>

	<tbody>
	<c:set var="i" value="${fn:length(list)}"/>
		<c:if test="${empty list}"> 
	    <tr>
	     <td colspan="6">아직 등록된 프로그램이 없어요!</td>
	    </tr>
	  </c:if>
	<c:forEach items="${list}" var="item">
		  <tr>
			  <td scope='row'>${i}</td>
			  <c:set var="i" value="${i-1}"/>
			  <td>${item.name}</td>
			  <th><a href= 'detail?programNo=${item.no}'>자세히보기</a></th>
			  <th><a href= 'updateForm?programNo=${item.no}'>수정하기</a></th>
			  <th><a href= 'delete?programNo=${item.no}'>삭제</a></th>
		  </tr>
	  </c:forEach>
 </tbody>
</table>
  <form class='addForm' action='addForm' method='post'>
   <button type="button" class="btn orange-button" data-toggle="modal" data-target="#addProgram">새 프로그램 등록하기</button>
  </form>
</div>
   
<div class="modal fade" id="addProgram" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">프로그램 등록</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id='programAddForm' action='add' method='post'>
					<input name="coachNo" type='hidden' value='${coachNo}'>
					<div class='title-box'>
  					<b>프로그램명</b> <input id='program-title' name='name' type='text'> <br>
					</div>
					<div class='introduce-box'>
					  <b>프로그램 소개</b> <textarea id='program-introduce' name='introduce' rows='5' cols='55' ></textarea><br>
					</div>
					<b>수업효과 키워드</b><br>
					
					<div id='program-tags' data-toggle="buttons">
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="1" hidden>하체튼튼
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="2" hidden>상체튼튼
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="3" hidden>근육위주
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="4" hidden>대회위주
					</label>
					<br>
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="5" hidden>체력위주
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="6" hidden>체중감량
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="7" hidden>재활위주
					</label>
					
					<label class="btn btn-primary"> 
					<input name="tags" type="checkbox" value="8" hidden>생활개선
					</label>
					
					</div>
					<div class='fee-box'>
					  <b>프로그램수강료</b><input id='program-fee' name='fee' type='text'>원 <br>
					</div>
					<b>프로그램타입</b> 
					    <select name="coachingType">
					        <option value='온라인'>온라인</option>
					        <option value='오프라인'>오프라인</option>
					        <option value='온라인+오프라인'>온라인+오프라인</option>
					    </select>
					<br>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn orange-button programAddFormSubmit">등록</button>
      </div>
    </div>
  </div>
</div>
