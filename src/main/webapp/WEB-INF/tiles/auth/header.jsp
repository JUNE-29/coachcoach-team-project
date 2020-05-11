<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class='navbar navbar-expand-lg navbar-dark bg-dark'>
<a class='navbar-brand' href='#'>CoachCoach</a>
<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNav' aria-controls='navbarNav' aria-expanded='false' aria-label='Toggle navigation'>
  <span class='navbar-toggler-icon'></span>
</button>
<div class='collapse navbar-collapse' id='navbarNav'>
  <ul class='navbar-nav mr-auto'>
    <li class='nav-item'>
      <a class='nav-link' href='#'>코치코치소개</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='/coachcoach-team-project/app/program/list'>코치찾기</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='#'>고객센터</a>
    </li>
  </ul>
<c:if test="${not empty loginUser}">
  <span class='navbar-text'>${loginUser.name}</span>
  <a href='/coachcoach-team-project/app/auth/logout' class='btn btn-success btn-sm'>로그아웃</a>
</c:if>
</div>
</nav>
