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
<p><a href='delete?no=${foodBoard.no}'>삭제</a> 
<a href='updateForm?no=${foodBoard.no}'>변경</a></p>
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
      <td>
        <a href='comment/delete?foodBoardNo=${foodBoard.no}&no=${comment.no}'>삭제</a>
      </td>
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