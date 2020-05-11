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
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_K/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources_k/assets/css/style.css" rel="stylesheet">

</head>
<body>

<tiles:insertAttribute name="header"/>

<main id="main">
<div class="body-footer">
<tiles:insertAttribute name="body"/>
</div>
</main>
<tiles:insertAttribute name="footer"/>
  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/counterup/counterup.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/typed.js/typed.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.servletContext.contextPath}/resources_k/assets/js/main.js"></script>

</body>
</html>
