<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <h1><span class="highlight">결제내역</span></h1>
  <br>
  <form action="search" method="POST">
  
    <h5>기간조회</h5>
		    <button type ="submit" name = "date" value="1week">1주일</button>
		    <button type ="submit" name = "date" value="1month">1개월</button>
		    <button type ="submit" name = "date" value="3month">3개월</button>
		    <button type ="submit" name = "date" value="6month">6개월</button>
    
    <div id="searchPayBox2">
	    <input name='sDate' type='date'>  ~  <input name='eDate' type='date'>
	    <button>조회</button>
	  </div>
  </form>
  <br>
  
  <div class="table-responsive" style="padding-right:60px;">
    <table class='table table-hover coach-table'>
    <thead class='table-head'> 
      <tr>
        <th scope="col">번호</th>
        <th scope="col">회원명</th>
        <th scope="col">주문한 프로그램명</th>
        <th scope="col">결제완료일</th>
        <th scope="col">결제금액</th>
        <th scope="col">상태</th>
      </tr>
    </thead>
    
    <c:set var="i" value="${fn:length(list)}"/>  
    
    <tbody>
      <c:if test="${empty list}"> 
        <tr>
          <td colspan="6">검색결과 없음</td>
        </tr>
      </c:if>
			<c:forEach items="${list}" var="item">
			  <tr>
			    <th scope="row">${i}</th>
					<c:set var="i" value="${i-1}"/>
			    <td>${item.member.name}</td>
			    <td>${item.programName}</td>
			    <td>${item.payDate}</td>
			    <td>${item.fee}</td>     
			  <td>${item.status}</td>
			  </tr>
      </c:forEach>
    </table>
    <div class="addForm">
      <button type="button" class="btn orange-button" onclick="location.href='addForm'">계좌관리</button>
    </div>
  </div>


