<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <h1><span class='highlight'>프로그램 자세히 보기</span></h1>
<div>
	<c:if test="${not empty program}">
	 프로그램명: ${program.name}<br>
	 프로그램 소개: ${program.introduce} <br>
	 수업효과 키워드: 
	 <c:forEach items="${program.coachingProgramTags}" var="tag">
	 <label>${tag.name}</label> </c:forEach><br>
	 프로그램 수강료: ${program.fee} <br>
	 프로그램타입: ${program.coachingType}<br>
	 </c:if>
	 
	 <c:if test="${empty requestScope.program}">
	 <p> 해당 프로그램이 없습니다.</p>
	 </c:if>
</div>

<div class='row'>
	<div class='col-md-4'>
		<form class='delete-program' method='post'>
			<input name='programNo' value='${item.no}' type='hidden'>
			<button class='btn btn-danger'>삭제</button>
		</form>
	</div>    
  <div class='col-md-4'>
		<form class='update-program' method='get'>
		  <input name='programNo' value='${item.no}' type='hidden'>
		  <button type="button" class="btn orange-button-detail" data-toggle="modal" data-target="#updateProgram">수정</button>
		</form>
  </div>
</div>
<hr>

<a href='list'>뒤로 가기</a>

<div class="modal fade" id="updateProgram" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">프로그램 수정</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id='programAddForm' action='add' method='post'>
          <input name="coachNo" type='hidden' value='${coachNo}'>
          <div class='title-box'>
            <b>프로그램명</b> <input id='program-title' name='name' type='text'>
          </div>
          <hr>
          <div class='introduce-box'>
            <b>프로그램 소개</b> <textarea id='program-introduce' name='introduce' rows='5' cols='55' ></textarea><br>
          </div>
          <hr>
          <b>수업효과 키워드</b><br>
          <div id='program-tags' data-toggle="buttons">
          <label class="btn btn-primary col-ms-4"> 
          <input name="tags" type="checkbox" value="1" hidden>하체튼튼
          </label>
          
          <label class="btn btn-primary col-ms-4"> 
          <input name="tags" type="checkbox" value="2" hidden>상체튼튼
          </label>
          
          <label class="btn btn-primary col-ms-4"> 
          <input name="tags" type="checkbox" value="3" hidden>근육위주
          </label>
          
          <label class="btn btn-primary col-ms-4"> 
          <input name="tags" type="checkbox" value="4" hidden>대회위주
          </label>
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
          <hr>
          <div class='fee-box'>
            <b>프로그램수강료 </b> <input id='program-fee' name='fee' type='text'>원 <br>
          </div>
          <hr>
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


