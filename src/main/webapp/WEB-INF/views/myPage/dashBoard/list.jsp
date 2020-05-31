<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
<div class="container2 col-md-8">
	<div class="notice">
    <div class="owl-carousel owl-theme" style="position:relative">
	    <c:forEach items="${notices}" var="notice">
	    <div class="notice-content" style="width:1000px;">
	      <h3><span class="highlight">${notice.createdDate} 공지사항 업데이트!</span></h3>
		      <div style="padding:20px;">
		      <input type="hidden" name="noticeNo" value="${notice.no}">
		      <h5 style="font-weight:bold; color:#3498DB">${notice.title}</h5>
		      </div>
	    </div>
	    </c:forEach>
    </div>
	</div>
	<div class="workouts" style="margin: 70px 0 30px 0">
	<div class="row">
		<div style="width:47%;">
	    <jsp:include page='../detailData/workoutGraph.jsp'/>
	  </div>
	  <div style="width:47%;">
      <jsp:include page='../detailData/walkGraph.jsp'/>
    </div>
  </div>
	</div>
	<hr>
	<div>
	  <h3><span class="tit" style="font-size:26px;">오늘 운동 하셨나요??</span></h3>
	  하셨을 거라고 믿어요
	  <br>
	  <a href="../detailData/memberWorkoutList">오늘의 운동 기록하러 가기<i class="bx bx-run" style="font-size: 40px"></i></a>
	</div>
</div>

<div class="container1 col-md-4" style="height:820px;">
  <div id="toDoListZone">
  <jsp:include page="toDoList.jsp"/>
	</div>
	<div class="chatting">
		코치와 채팅하기
	</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="noticeDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">공지사항</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="notice-title"></div>
        <div id="notice-programName"></div>
        <div id="notice-date"></div>
        <div id="notice-content" ></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>