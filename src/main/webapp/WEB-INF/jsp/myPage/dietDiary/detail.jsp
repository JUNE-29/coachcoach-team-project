<%@page import="com.coachcoach.domain.Member"%>
<%@page import="com.coachcoach.domain.Coach"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat" %>

<jsp:include page='../../header.jsp'/>

<c:if test="${not empty foodBoard}">
고객이름: 나문희<br>
등록일: ${foodBoard.modifiedDate}<br>
사진: <img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br>
내용: ${foodBoard.content}<br>
<%if (session.getAttribute("loginUser") instanceof Member) {%>
<div class="row">
	<div class="col-md-2">
	<form action="delete" method="post">
	  <button value="${foodBoard.no}" name="no">삭제</button> 
	</form>
	</div>
	<div class="col-md-2">
	<form action="updateForm" method="post">
	  <input type='hidden' name='no' value='${foodBoard.no}'>
	  <button>변경</button> 
	</form>
	</div>
</div>
<%}%>
<br>
댓글<br>

<table>
  <c:forEach items='${foodBoardComments}' var='comment'>
    <tr>
    <c:choose>
      <c:when test='${comment.coachName eq null}'>
        <td>
          나
        </td>
      </c:when>
		  <c:when test='${comment.coachName ne null}'>
		    <td>
		      ${comment.coachName}
		    </td>
		  </c:when>
    </c:choose>
      <td>
        ${comment.content}
      </td>
      <td>
        ${comment.createDate}
      </td>
      <%if (session.getAttribute("loginUser") instanceof Member) {%>
	      <td>
	      <form action='comment/delete' method='post'>
	        <input type='hidden' name='foodBoardNo' value='${foodBoard.no}'>
	        <input type='hidden' name='no' value='${comment.no}'>
	        <button>삭제</button>
	      </form>
	      </td>
      <%}%>
      <%if (session.getAttribute("loginUser") instanceof Coach) {%>
      <c:if test="${sessionScope.loginUser.no eq comment.coachNo}">
        <td>
        <form action='comment/delete' method='post'>
          <input type='hidden' name='foodBoardNo' value='${foodBoard.no}'>
          <input type='hidden' name='no' value='${comment.no}'>
          <button>삭제</button>
        </form>
        </td>
      </c:if>
      <%}%>
    </tr>  
  </c:forEach>
</table>
</c:if>
<form action='comment/add' method='post'>
<input type="hidden" name="foodBoardNo" value="${foodBoard.no}">
<% 
Object loginUser = (Object) request.getSession().getAttribute("loginUser");
if (loginUser instanceof Coach) {
%>
<input type="hidden" name="coachNo" value="${loginUser.no}">
<%}%>
<input type="text" name="content" placeholder="댓글 쓰기"> 
<button class="btn btn-primary">등록</button>
<br>
</form>

<jsp:include page='../../footer.jsp'/>