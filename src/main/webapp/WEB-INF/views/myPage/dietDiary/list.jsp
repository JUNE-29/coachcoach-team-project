<%@page import="com.coachcoach.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">

  <h1 class="text-primary text-center"> 오늘의 식단 </h1><br>
  <h6  class="text-center"  class="font-weight-bold" style="color: DimGrey;"> - 건강한 하루를 위한 건강식 식단 (왼쪽부터 아침, 점심, 저녁 순입니다 참고부탁드립니다.)</h6>
  <hr>
  <br>
    <c:forEach items="${list}" var="item" varStatus="status">
    <c:if test="${status.getIndex() % 3 == 0}">
      <div class="card-columns">
      <c:set var="divStart" value="true"/>
    </c:if>
      <div class="card">
         <a href='detail?no=${item.no}'>
           <img class="card-img"
            src='${pageContext.servletContext.contextPath}/upload/foodBoard/${item.photoFilePath}'>
         </a>
      </div>
    <c:if test="${status.getIndex() % 3 == 2}">
      </div>
      <c:set var="divStart" value="false"/>
    </c:if>
    </c:forEach> 
    
    <c:if test="${divStart}">
      </div>
    </c:if> 
    
<% 
  Object loginUser = (Object) request.getSession().getAttribute("loginUser");
  if (loginUser instanceof Member) {
  %>
  
  <br>
    <div >
    <button type="button" onclick="location.href='addForm'" class="btn btn-block btn-primary "  >+</button>
    </div>
  <br>
  </div>
  
  <% 
  }
  %>


