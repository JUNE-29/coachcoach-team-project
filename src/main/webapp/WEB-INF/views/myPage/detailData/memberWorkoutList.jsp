<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.loginUser.getClass().simpleName == 'Coach'}">
  <input type="hidden" name="coachAccess">
</c:if>

<div class="row" >
  <div class="walk-period">
    <div id="walkWeek" class="walk week active">
    Day
    </div>
    <div id="walkMonth" class="walk month">
    Week
    </div>
    <div id="walkYear" class="walk year">
    Month
    </div>
  </div>
  <div style="width:45%;">
    <canvas id="workoutAmount" width="200" height="200"></canvas>
	</div>
	<div style="width:45%;">
    <canvas id="walk" width="200" height="200"></canvas>
  </div>
</div>


<div style="width:90%; margin:100px 0 100px 70px;">
  <canvas id="weight" width="400" height="150"></canvas>
</div>



<hr>


<div>
<button class="btn btn-primary addWorkoutButton" data-toggle="modal" data-target="#memberWorkoutAdd">등록하기</button>
   
      
<table id="myTable" class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">시행날짜</th>
      <th scope="col">체중(kg)</th>
      <th scope="col">걸음수(step)</th>
      <th scope="col">운동종목</th>
      <th scope="col">자세히보기</th>
    </tr>
  </thead>
  <c:set var="i" value="1"/>
  <tbody>
  <c:forEach items="${list}" var="item">
    <tr>
      <th scope="row">${i}</th>
      <c:set var="i" value="${i+1}"/>
      <td align=center>${item.workoutDate}</td>
      <td align=center>${item.weight}</td>
      <td align=center>${item.walkCount}</td>
	      <td align=center>
	      <c:forEach items="${item.workoutUnit}" var="unit">
	       ${unit.name} 
	      </c:forEach>
	      </td>
      <th ><a class="memberWorkoutDetail-button" href= '#' data-toggle="modal" data-target="#memberWorkoutDetail" >
      <input class="workoutListNo" type="hidden" value="${item.workoutListNo}">자세히보기</a></th>
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>


<c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">

<!-- Modal -->
<div class="modal fade" id='memberWorkoutAdd' data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">오늘의 운동</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <form>
  	      <input name='memberNo' type='hidden' value='${memberNo}'>
  	      <%Date now = new Date();
  	       SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
  	       String today = fm.format(new Date());%>
					<h5>오늘 날짜</h5> <%=today%>
					
					<hr>
					<h5>오늘의 체중을 입력해주세요.</h5>
					<input name='weight' type='text'>Kg<br>
					
					<hr>
					<h5>오늘의 걸음수를 입력해주세요.</h5>
					<input name='walkCount' type='text'><br>
					<hr>
					<div class="workout-select-div">
						<h5>오늘의 운동종목을 입력해주세요.</h5>
					  <table id="workout-select">
					  <tr>
					    <td>
					    <span>운동종목</span> 
					    <select name="workoutNo" style="width:100px;">
						    <c:forEach items="${workoutUnitList}" var="workout"> 
						       <option value="${workout.workoutNo}">${workout.name}</option>
						    </c:forEach>
					    </select>

				      <span>운동시간(분)</span>
				      <select name="unit" style="width:144px;" >
					      <option value="10">10</option>
					      <option value="20">20</option>
					      <option value="30">30</option>
					      <option value="40">40</option>
					      <option value="50">50</option>
					      <option value="60">60</option>
					      <option value="70">70</option>
					      <option value="80">80</option>
					      <option value="90">90</option>
					      <option value="100">100</option>
					      <option value="120">120</option>
					      <option value="150">150</option>
					      <option value="180">180</option>
    			      <option value="210">210</option>
					    </select> 
					    </td>
					    <td>
					    <a class="workoutUnitDelete" href='#' style="color: red;"><i class='bx bxs-minus-square'></i>삭제</a>
					    </td>
					    </tr>
					</table>
					</div>
						<a id="workoutUnitAdd" href='#' style="float:right; margin-right:5px;"><i class='bx bxs-plus-square'></i>추가</a>
	      </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="workoutSubmit">확인</button>
      </div>
    </div>
  </div>
</div>
</c:if>


<!-- Modal -->
<div class="modal fade" id='memberWorkoutDetail' data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">운동 내역</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <input name="workoutListNo" type="hidden" value="">
          <h5>날짜</h5> <div class="date"></div>
          <hr>
          <h5>이날의 체중</h5>
          <div class="weight"></div>
          <hr>
          <h5>이날의 걸음수</h5>
          <div class="walkCount"></div>
          <hr>
          <h5>이날의 운동 종목</h5>
      </div>
      <div class="modal-footer">
	      <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">
	        <button type="button" class="btn btn-danger" id="workoutDelete">삭제</button>
	      </c:if>
        <button type="button" class="btn btn-primary"  data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
