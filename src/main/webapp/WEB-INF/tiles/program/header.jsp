<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="${pageContext.servletContext.contextPath}/index.jsp">Coach<span>Coach</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="${pageContext.servletContext.contextPath}">Home</a></li>
          <li><a href="#about">코치소개</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/app/program/list">코치찾기</a></li>
          
          <li class="drop-down" wh><a href="">고객센터</a>
            <ul>
              <li><a href="${pageContext.servletContext.contextPath}/app/serviceCenter/FAQ/list">FAQ</a></li>
              <li><a href="${pageContext.servletContext.contextPath}/app/serviceCenter/noticeBoard/list">공지사항</a>
          </li>
        </ul>
        
          <c:if test="${sessionScope.loginUser ne null}">
          <li class="drop-down"><a href="">마이페이지</a>
            <ul>
              <li><a href="${pageContext.servletContext.contextPath}/app/myCoach/profile/form">프로필</a></li>
              <li><a href="${pageContext.servletContext.contextPath}/app/myCoach/program/list">마이코치</a></li>
              <li><a href="${pageContext.servletContext.contextPath}/app/myPage/dashBoard/list">관리페이지</a></li>
          </li>
           </c:if> 
         
             <c:if test="${sessionScope.loginUser eq null}">
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/signup">회원가입</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/login" >로그인</a></li>
           </c:if> 
           
            <c:if test="${sessionScope.loginUser ne null}">
          <li> <a href="${pageContext.servletContext.contextPath}/app/auth/logout">로그아웃</a></li>
           </c:if> 
          </ul>
      </nav><!-- .nav-menu -->

    </div>
      </header><!-- End Header -->
