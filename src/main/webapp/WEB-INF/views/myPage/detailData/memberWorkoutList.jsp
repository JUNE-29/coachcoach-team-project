<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>나의운동내역 </h3>

  <button class="btn btn-primary" data-toggle="modal" data-target="#memberWorkoutAdd" 
  style="margin-left:800px; margin-bottom:10px">등록하기</button>
   
      
<table id="myTable" class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">시행날짜</th>
      <th scope="col">체중(kg)</th>
      <th scope="col">걸음수(step)</th>
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
      <th ><a class="memberWorkoutDetail-button" href= '#' data-toggle="modal" data-target="#memberWorkoutDetail" >
      <input class="workoutListNo" type="hidden" value="${item.workoutListNo}">자세히보기</a></th>
    </tr>
  </c:forEach>
  </tbody>
</table>


<!-- Modal -->
<div class="modal fade" id='memberWorkoutAdd'data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
					<h5>오늘의 운동종목을 입력해주세요.</h5>
					<c:set var="i" value="0"></c:set>
					<c:forEach begin="1" end="3" >
					<c:set var="i" value="${i+1}"></c:set>
					  <table>
					    <tr>
					  <td>운동종목
					    <select name="workoutNo" style="width:140px;">
						    <c:forEach items="${workoutUnitList}" var="workout"> 
						       <option value="${workout.workoutNo}">${workout.name}</option>
						    </c:forEach>
					    </select>

				      운동시간(분)
				      <select name="unit" style="width:140px;" >
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
					    </tr>
					</table>
					</c:forEach>
	      </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="workoutSubmit">확인</button>
      </div>
    </div>
  </div>
</div>


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
        <button type="button" class="btn btn-danger" id="workoutDelete">삭제</button>
        <button type="button" class="btn btn-primary"  data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>

