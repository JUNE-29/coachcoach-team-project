<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>


<c:if test="${not empty foodBoard}">
고객이름: 나문희<br>
등록일: ${foodBoard.modifiedDate}<br>
사진: <img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br>
내용: ${foodBoard.content}<br>
<p><a href='delete?no=${foodBoard.no}'>삭제</a> 
<a href='updateForm?no=${foodBoard.no}'>변경</a></p>
댓글댓글댓글<br>
</c:if>

<c:if test="${empty requestScope.foodBoard}">
<p>해당 게시물이 없습니다.</p>
</c:if>

<jsp:include page='../../footer.jsp'/>