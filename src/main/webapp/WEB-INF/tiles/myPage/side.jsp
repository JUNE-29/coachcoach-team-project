<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bx bx-menu"></i></button>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="d-flex flex-column">

      <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">
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
      </c:if>
 
      <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Coach'}">
      <div class="profile">
      <c:choose>
      <c:when test="${sessionScope.memberCoachingProgram.member.photo ne null}">
        <img src="${pageContext.servletContext.contextPath}/upload/member/${sessionScope.memberCoachingProgram.member.photo}" alt="" class="img-fluid">
      </c:when>
      <c:when test="${sessionScope.memberCoachingProgram.member.photo eq null}">
        <img src="${pageContext.servletContext.contextPath}/upload/member/default.jpg" alt="" class="img-fluid">
      </c:when>
      </c:choose>
        <h1 class="text-light">${sessionScope.memberCoachingProgram.member.name}</h1>
      </div>
      </c:if>

      <nav class="nav-menu">
        <ul>
        <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">
          <li><a href="../dashBoard/list" class="go"><i class="bx bx-list-check"></i> <span>DASHBOARD</span></a></li>
        </c:if>
          <li><a href="../coaching/list" class="go"><i class="bx bxs-message"></i> <span>COACHING</span></a></li>
          <li><a href="../detailData/memberWorkoutList" class="go"><i class="bx bx-user"></i> DETAILDATA</a></li>
          <li><a href="../dietDiary/list" class="go"><i class="bx bxs-calendar-plus"></i> DIETDIARY</a></li>

          <li><a class="go" href="../../auth/logout"><i class="bx bxs-log-out-circle"></i> 로그아웃</a></li>
          
        </ul>
          <br><br>
          <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Member'}">
          <a class="go" href="../../../index.jsp"><i class="bx bxs-log-out"></i> 메인화면으로 나가기</a>
          </c:if>
          
          <c:if test="${sessionScope.loginUser.getClass().simpleName == 'Coach'}">
          <a class="go" href="../../coachPage/memberManagement/list"><i class="bx bxs-log-out"></i> 회원관리로 돌아가기</a>
          </c:if>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
