<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		  <c:when test='${comment.coachName ne ""}'>
		    <td>
		      ${comment.coachName}
		    </td>
		  </c:when>
		  
      <c:when test='${comment.coachName eq ""}'>
        <td>
          나
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
        <a href='comment/delete?no=${comment.no}'>삭제</a>
      </td>
    </tr>  
  </c:forEach>
</table>
</c:if>
<form action='comment/add'>
<input type="hidden" name="foodBoardNo" value="${foodBoard.no}">
<input type="text" name="content" placeholder="댓글 쓰기"> 
<button class="btn btn-primary">등록</button>
<br>
</form>

<jsp:include page='../../footer.jsp'/>