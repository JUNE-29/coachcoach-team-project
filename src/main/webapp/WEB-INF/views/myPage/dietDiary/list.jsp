<%@page import="com.coachcoach.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid">
  <h1 class="text-primary text-center">사진 게시판</h1>

  <div class="card-group">
    <c:forEach items="${list}" var="item">
      <div class="card">
         <a href='detail?no=${item.no}'><img class="card-img-top img-fluid" src='${pageContext.servletContext.contextPath}/upload/foodBoard/${item.photoFilePath}' height='60'></a>
      </div>
    </c:forEach>      
  </div>
  
  
  <% 
  Object loginUser = (Object) request.getSession().getAttribute("loginUser");
  if (loginUser instanceof Member) {
  %>
  <br>
    <div >
    <button type="button" onclick="location.href='addForm'" class="btn btn-block btn-primary">+</button>
    </div>
  <br>
  <% 
  }
  %>
  

</div>
