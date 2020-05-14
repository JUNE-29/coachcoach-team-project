<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h1><span class="highlight">프로그램관리</span></h1>
<br>

<div class="table-responsive" style="padding-right:60px;">
  <table class='table table-hover'>
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
   

