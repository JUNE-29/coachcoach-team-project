<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

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
          <li><a href="../profile/form"><i class="bx bxs-pencil"></i>내 프로필</a></li>
          <li><a href="../program/list"><i class="bx bx-user"></i>마이코치</a></li>
          <li><a href="../apply/list"><i class="bx bxs-calendar-plus"></i>신청내역</a></li>
          <li><a href="../pay/list"><i class="bx bxs-user-detail"></i>결제내역</a></li>
          <li><a href="../modify/form"><i class="bx bx-list-check"></i> <span>회원정보수정</span></a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
