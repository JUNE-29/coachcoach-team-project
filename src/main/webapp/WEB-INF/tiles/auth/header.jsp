<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <style>
  /*--------------------------------------------------------------
# Back to top button
--------------------------------------------------------------*/
.back-to-top {
  position: fixed;
  display: none;
  right: 15px;
  bottom: 15px;
  z-index: 99999;
}

.back-to-top i {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
  width: 40px;
  height: 40px;
  border-radius: 4px;
  background: #01b1d7;
  color: #fff;
  transition: all 0.4s;
}

.back-to-top i:hover {
  background: #03d1fe;
  color: #fff;
}

/*--------------------------------------------------------------
# Top Bar
--------------------------------------------------------------*/
#topbar {
  background: #fff;
  padding: 10px 0;
  border-bottom: 1px solid #eee;
  font-size: 14px;
}

#topbar .contact-info a {
  line-height: 1;
  color: #444444;
  transition: 0.3s;
}

#topbar .contact-info a:hover {
  color: #01b1d7;
}

#topbar .contact-info i {
  color: #01b1d7;
  padding: 4px;
}

#topbar .contact-info .phone-icon {
  padding-left: 20px;
  margin-left: 20px;
  border-left: 1px solid #e9e9e9;
}

#topbar .social-links a {
  color: #62787d;
  padding: 4px 12px;
  display: inline-block;
  line-height: 1px;
  transition: 0.3s;
  border-left: 1px solid #e9e9e9;
}

#topbar .social-links a:hover {
  color: #01b1d7;
}

#topbar .social-links a:first-child {
  border-left: 0;
}

/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
  height: 70px;
  transition: all 0.5s;
  z-index: 997;
  transition: all 0.5s;
  background: #fff;
}

#header.header-scrolled {
  box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
}

#header .logo h1 {
  font-size: 28px;
  margin: 0;
  line-height: 1;
  font-weight: 700;
  letter-spacing: 1px;
}

#header .logo h1 a, #header .logo h1 a:hover {
  color: #354144;
  text-decoration: none;
}

#header .logo h1 a span, #header .logo h1 a:hover span {
  color: #01b1d7;
}

#header .logo img {
  padding: 0;
  margin: 0;
  max-height: 40px;
}

/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/
/* Desktop Navigation */
.nav-menu, .nav-menu * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.nav-menu > ul > li {
  position: relative;
  white-space: nowrap;
  float: left;
}

.nav-menu a {
  display: block;
  position: relative;
  color: #354144;
  padding: 10px 15px;
  transition: 0.3s;
  font-size: 14px;
  text-transform: uppercase;
  font-family: "Poppins", sans-serif;
  font-weight: 500;
}

.nav-menu a:hover, .nav-menu .active > a, .nav-menu li:hover > a {
  color: #01b1d7;
  text-decoration: none;
}

.nav-menu .drop-down ul {
  display: block;
  position: absolute;
  left: 0;
  top: calc(100% - 30px);
  z-index: 99;
  opacity: 0;
  visibility: hidden;
  padding: 10px 0;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  transition: ease all 0.3s;
}

.nav-menu .drop-down:hover > ul {
  opacity: 1;
  top: 100%;
  visibility: visible;
}

.nav-menu .drop-down li {
  min-width: 180px;
  position: relative;
}

.nav-menu .drop-down ul a {
  padding: 10px 20px;
  font-size: 14px;
  font-weight: 500;
  text-transform: none;
  color: #354144;
}

.nav-menu .drop-down ul a:hover, .nav-menu .drop-down ul .active > a, .nav-menu .drop-down ul li:hover > a {
  color: #01b1d7;
}

.nav-menu .drop-down > a:after {
  content: "\ea99";
  font-family: IcoFont;
  padding-left: 5px;
}

.nav-menu .drop-down .drop-down ul {
  top: 0;
  left: calc(100% - 30px);
}

.nav-menu .drop-down .drop-down:hover > ul {
  opacity: 1;
  top: 0;
  left: 100%;
}

.nav-menu .drop-down .drop-down > a {
  padding-right: 35px;
}

.nav-menu .drop-down .drop-down > a:after {
  content: "\eaa0";
  font-family: IcoFont;
  position: absolute;
  right: 15px;
}

@media (max-width: 1366px) {
  .nav-menu .drop-down .drop-down ul {
    left: -90%;
  }
  .nav-menu .drop-down .drop-down:hover > ul {
    left: -100%;
  }
  .nav-menu .drop-down .drop-down > a:after {
    content: "\ea9d";
  }
}

/* Mobile Navigation */
.mobile-nav-toggle {
  position: fixed;
  right: 15px;
  top: 20px;
  z-index: 9998;
  border: 0;
  background: none;
  font-size: 24px;
  transition: all 0.4s;
  outline: none !important;
  line-height: 1;
  cursor: pointer;
  text-align: right;
}

.mobile-nav-toggle i {
  color: #354144;
}

.mobile-nav {
  position: fixed;
  top: 55px;
  right: 15px;
  bottom: 15px;
  left: 15px;
  z-index: 9999;
  overflow-y: auto;
  background: #fff;
  transition: ease-in-out 0.2s;
  opacity: 0;
  visibility: hidden;
  border-radius: 10px;
  padding: 10px 0;
}

.mobile-nav * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.mobile-nav a {
  display: block;
  position: relative;
  color: #354144;
  padding: 10px 20px;
  font-weight: 500;
  outline: none;
}

.mobile-nav a:hover, .mobile-nav .active > a, .mobile-nav li:hover > a {
  color: #01b1d7;
  text-decoration: none;
}

.mobile-nav .drop-down > a:after {
  content: "\ea99";
  font-family: IcoFont;
  padding-left: 10px;
  position: absolute;
  right: 15px;
}

.mobile-nav .active.drop-down > a:after {
  content: "\eaa1";
}

.mobile-nav .drop-down > a {
  padding-right: 35px;
}

.mobile-nav .drop-down ul {
  display: none;
  overflow: hidden;
}

.mobile-nav .drop-down li {
  padding-left: 20px;
}

.mobile-nav-overly {
  width: 100%;
  height: 100%;
  z-index: 9997;
  top: 0;
  left: 0;
  position: fixed;
  background: rgba(31, 38, 39, 0.6);
  overflow: hidden;
  display: none;
  transition: ease-in-out 0.2s;
}

.mobile-nav-active {
  overflow: hidden;
}

.mobile-nav-active .mobile-nav {
  opacity: 1;
  visibility: visible;
}

.mobile-nav-active .mobile-nav-toggle i {
  color: #fff;
}
  
  </style>


  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="${pageContext.servletContext.contextPath}/index.jsp">Coach<span>Coach</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="${pageContext.servletContext.contextPath}/index.jsp">Home</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/index.jsp" >코치소개</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/app/program/list" >코치찾기</a></li>
          
          <c:if test="${sessionScope.loginUser eq null}">
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/signup">회원가입</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/login" >로그인</a></li>
           </c:if> 
          
          <li class="drop-down"><a href="">고객센터</a>
            <ul>
              <li><a href="${pageContext.servletContext.contextPath}/app/serviceCenter/FAQ/list">FAQ</a></li>
              <li class="drop-down"><a href="${pageContext.servletContext.contextPath}/app/serviceCenter/noticeBoard/list">공지사항</a>
          </li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
      </header><!-- End Header -->
