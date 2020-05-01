 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>
<div>
<img src='/upload/member/' height='80'><br> 
 이름<a href='coachDetail'>엄진영 코치님</a><br> 
진행중인 프로그램<a href='programDetail'>엄진영과 함께하는 발레교실</a><br> 
연락처 : 010-0000-0000
</div>
<div>
  <h3>완료된 프로그램 내역</h3>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">담당코치</th>
      <th scope="col">프로그램명</th>
      <th scope="col">기간</th>
      <th scope="col">후기</th>
    </tr>
  </thead>
  
  
  <c:forEach items="${programList}" var="list">
  <tbody>
  <c:set var="status" value="${list.mcp.status}" />
  <c:if test="${status eq '진행 완료'}">
    <tr>
      <th scope="row">${list.mcp.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.name}</td>
      <td>${list.mcp.startDate} ~ ${list.mcp.endDate}</td>     
    <c:if test="${empty list.mcp.review}">
    <td>
      <form action='reviewForm' method='get'>
     <button>등록</button>
      </form>
    </td>
    </c:if>
    <c:if test="${not empty list.mcp.review}">
    <td>완료</td>
    </c:if>
    </tr>
  </c:if>
 
 
  </tbody>
 
 
  </c:forEach>
</table>
</div>


<jsp:include page="../footer.jsp"/>
