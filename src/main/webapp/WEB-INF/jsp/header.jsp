<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Basic Bootstrap Template</title>
    <!-- Bootstrap CSS file -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
   <!-- Vendor CSS Files -->
<link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
 <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/css/style.css" rel="stylesheet">
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

</head>
<body>




   <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i><a href="mailto:contact@example.com">coach@naver.com</a>
        <i class="icofont-phone phone-icon"></i> +1 5589 55488 55
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="${pageContext.servletContext.contextPath}/index.jsp">Coach<span>Coach</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">Home</a></li>
          <li><a href="#about">코치소개</a></li>
          <li><a href="app/program/list">코치찾기</a></li>
          
          <li class="drop-down" wh><a href="">고객센터</a>
            <ul>
              <li><a href="app/serviceCenter/FAQ/list">FAQ</a></li>
              <li><a href="app/serviceCenter/noticeBoard/list">공지사항</a>
          </li>
        </ul>
        
          <c:if test="${sessionScope.loginUser ne null}">
          <li class="drop-down"><a href="">마이페이지</a>
            <ul>
              <li><a href="#">프로필</a></li>
              <li><a href="#">마이코치</a></li>
              <li><a href="#">관리페이지</a></li>
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
  
    <!-- JS files: jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

 <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/main.js"></script>


</body>
</html>
