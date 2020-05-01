<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>프로필</h1>

  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' height='70'><br>
 
  <table border='1'>
  <tr>
    <td>이름</td> <td>${coach.name}</td>
  </tr>
  
  <tr>
    <td>수업가능지역</td> <td>${coach.area}</td>
  </tr>
  
  <tr>
    <td>경력사항</td> <td>${coach.career}</td>
  </tr>
  
  <tr>
    <td>보유자격증</td> <td>${coach.certification}</td>
  </tr>
  
  <tr>
    <td>강사소개</td> <td>${coach.introduce}</td>
  </tr>
  
  </table>
  
  <button onclick="location.href='form'" class="btn btn-primary col-md-4" style="margin : 10px;">내 프로필 수정</button>

<hr>


<jsp:include page="../../footer.jsp"/>