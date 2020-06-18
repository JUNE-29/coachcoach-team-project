<%@page import="com.coachcoach.domain.Member"%>
<%@page import="com.coachcoach.domain.Coach"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat" %>

 <h1 class="display" style="font-size:50px;  font-weight: bold; color: DeepSkyBlue;">Diet Diary</h1><br>

<c:if test="${not empty foodBoard}">
<p style="font-size:17px;  font-weight: bold; color: DimGray;" >작성자: <small style="font-size:17px;">김사랑</small><br>
<p style="font-size:17px;  font-weight: bold; color: DimGray;" >등록일: <small style="font-size:17px;">${foodBoard.modifiedDate}</small><br><br>
<p style="font-size:17px;  font-weight: bold; color: DimGray;">&nbsp; <img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br><br>
<p style="font-size:17px;  font-weight: bold; color: DimGray;">내용: <small style="font-size:17px;">${foodBoard.content}</small><br>
<%if (session.getAttribute("loginUser") instanceof Member) {%>

<div class="row">
    <button value="${foodBoard.no}" name="no" class="btn btn-danger fooddelete m-5" >삭제</button> 
  <form action="updateForm" method="post">
    <input type='hidden' name='no' value='${foodBoard.no}'>
    <button class="btn btn-primary m-5" >변경</button> 
  </form>
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
          <button class="btn btn-primary">삭제</button>
        </form>
        </td>
      <%}%>
      <%if (session.getAttribute("loginUser") instanceof Coach) {%>
      <c:if test="${sessionScope.loginUser.no eq comment.coachNo}">
        <td>
        <form action='comment/delete' method='post'>
          <input type='hidden' name='foodBoardNo' value='${foodBoard.no}'>
          <input type='hidden' name='no' value='${comment.no}'>
          <button class="btn btn-primary">삭제</button>
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
</div>
</div>
