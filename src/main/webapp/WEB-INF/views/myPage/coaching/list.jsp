<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br>
<div id='calendar'></div>
<c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">
  <input name="checkIfMember" type="hidden">
</c:if>
<!-- Modal -->
<div class="modal fade" id="calendarAddForm" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">코칭 스케쥴</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
				<form id="calendarAddFormForm">
					<input name="memberProgramNo" value="${memberCoachingProgram.no}" type='hidden'>
					회원명<br>
					<div style="font-size:25px">
					${memberCoachingProgram.member.name}
					</div>
					프로그램명
					<div style="font-size:25px">
					${memberCoachingProgram.programName} 
					</div>
					Workout 일정
          <div style="font-size:20px">
					<input type='Date' name='startDate'> ~ <input type='Date' name='endDate'><br>
					</div>
					<hr>
				  <textarea name='plan' class='summernote'></textarea><br>
					첨부 파일: <input type='file' name='inputFiles'> <br>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="calendarAddSubmit">등록</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="calendarDetail" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">코칭 스케쥴</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="padding:30px">
          <input name="memberProgramNo" value="${memberCoachingProgram.no}" type='hidden'>
          <input name="calendarNo" type='hidden'>
          코치이름<div id="coachName"> ${detail.coach.name}</div> <br>
					프로그램명<div id="programName"> ${detail.programName}</div><br>
					Workout 일정<div id="period"> ${detail.startDate} ~ ${detail.endDate}</div>
					<hr>
				  <div id="plan">${detail.plan}</div>
					<img src='${pageContext.servletContext.contextPath}/upload/calendarFile/' height='400'>
      </div>
      <div class="modal-footer">
      <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Coach'}">
        <button type="button" class="btn btn-danger" id="calendarDelete">삭제</button>
      </c:if>
        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>