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
        <img src="${pageContext.servletContext.contextPath}/upload/coach/${sessionScope.loginUser.photo}" alt="" class="img-fluid">
      </c:when>
      <c:when test="${sessionScope.loginUser.photo eq null}">
        <img src="${pageContext.servletContext.contextPath}/upload/coach/default.jpg" alt="" class="img-fluid">
      </c:when>
      </c:choose>
        <h1 class="text-light">${sessionScope.loginUser.name}</h1>
      </div>

      <nav class="nav-menu">
        <ul>
          <li><a href="../requestReceived/list" class="go"><i class="bx bx-list-check"></i> <span>받은 요청</span></a></li>
          <li><a href="#" class="go"><i class="bx bxs-message"></i> <span>채팅</span></a></li>
          <li><a class="go" href="../profile/detail" ><i class="bx bx-user"></i> 프로필</a></li>
          <li><a href="../programManagement/list" class="go"><i class="bx bxs-calendar-plus"></i> 프로그램 관리</a></li>
          <li><a href="../memberManagement/list" class="go"><i class="bx bxs-user-detail"></i> 회원 관리</a></li>
          <li><a href="../payment/list" class="go"><i class="bx bx-won"></i> 결제 관리</a></li>
          <li><a href="../modify/checkPasswordForm" class="go"><i class="bx bxs-pencil"></i> 개인정보 수정</a></li>

          <li><a class="go" href="../../auth/logout"><i class="bx bxs-log-out-circle"></i> 로그아웃</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
