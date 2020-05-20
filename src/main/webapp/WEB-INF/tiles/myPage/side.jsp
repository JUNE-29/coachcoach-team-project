<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bx bx-menu"></i></button>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="d-flex flex-column">

      <div class="profile">
      <c:choose>
      <c:when test="${sessionScope.loginUser.photo ne null}">
        <img src="${pageContext.servletContext.contextPath}/upload/member/${sessionScope.loginUser.photo}" alt="" class="img-fluid">
      </c:when>
      <c:when test="${sessionScope.loginUser.photo eq null}">
        <img src="${pageContext.servletContext.contextPath}/upload/member/default.jpg" alt="" class="img-fluid">
      </c:when>
      </c:choose>
        <h1 class="text-light">${sessionScope.loginUser.name}</h1>
      </div>

      <nav class="nav-menu">
        <ul>
          <li><a href="../dashBoard/list" class="go"><i class="bx bx-list-check"></i> <span>DASHBOARD</span></a></li>
          <li><a href="#" class="go"><i class="bx bxs-message"></i> <span>COACHING</span></a></li>
          <li><a href="../detailData/memberWorkoutList" class="go"><i class="bx bx-user"></i> DETAILDATA</a></li>
          <li><a href="../dietDiary/list" class="go"><i class="bx bxs-calendar-plus"></i> DIETDIARY</a></li>

          <li><a class="go" href="../../auth/logout"><i class="bx bxs-log-out-circle"></i> 로그아웃</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
