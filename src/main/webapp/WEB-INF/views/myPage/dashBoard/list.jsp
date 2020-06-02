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
	      <h5 style="font-weight:bold; padding-left:9px;"> [${notice.createdDate}] 코치의 공지사항! </h5> 
		      <div style="padding:10px;">
		      <input type="hidden" name="noticeNo" value="${notice.no}">
		      <h3 style="color:#08BAFD; letter-spacing: -1px;"> ${notice.title}</h3>
		      </div>
	    </div>
	    </c:forEach>
    </div>
	</div>
	<div class="dsboard_workout_area">
	<span style=" font-size:20px; font-weight: bold; letter-spacing: -1px;">회원님의 운동 데이터</span>
	<i class="bx bx-run" style="font-size: 40px; color:#08BAFD;"></i>
 <a href="../detailData/memberWorkoutList" style="font-weight:bold; margin-left:430px; letter-spacing: -1px; color:#08BAFD;">+&nbsp;데이터 더보기</a>
	<hr>
	<div class="workouts" >
	<div class="row">
		<div style="width:47%;">
	    <jsp:include page='../detailData/workoutGraph.jsp'/>
	  </div>
	  <div style="width:47%;">
      <jsp:include page='../detailData/walkGraph.jsp'/>
    </div>
  </div>
	</div>

</div>
</div>

<div class="container1 col-md-4" style="height:820px;">
  <div id="toDoListZone">
    <jsp:include page="toDoList.jsp"/>
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