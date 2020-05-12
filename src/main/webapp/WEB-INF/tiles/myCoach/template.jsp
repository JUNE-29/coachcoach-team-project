<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<c:if test="${not empty refreshUrl}">
<meta http-equiv="Refresh" content="${refreshUrl}">
</c:if>
<title>CoachCoach-team-project</title>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources_e/css/style.css" rel="stylesheet">

</head>
<body>

<tiles:insertAttribute name="side"/>

<main id="main">
<div id="end-line">
<div id="content">
<tiles:insertAttribute name="body"/>
</div>
</div>
<tiles:insertAttribute name="footer"/>
</main>
  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/counterup/counterup.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_e/vendor/typed.js/typed.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}}/resources_e/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.servletContext.contextPath}}/resources_e/js/main.js"></script>

</body>
</html>
