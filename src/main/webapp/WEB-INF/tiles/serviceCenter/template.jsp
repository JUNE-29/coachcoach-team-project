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
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css.map" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-grid.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-grid.min.css.map" rel="stylesheet">
 <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-reboot.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-reboot.css.map" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-reboot.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap-reboot.min.css.map" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap.css.map" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap.min.css.map" rel="stylesheet">


  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/css/style.css" rel="stylesheet">
</head>
<body>

<tiles:insertAttribute name="header"/>

<div class="content">
<tiles:insertAttribute name="body"/>
</div>

<tiles:insertAttribute name="footer"/>

  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js.map"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js.map"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.js.map"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.min.js.map"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/main.js"></script>

</body>
</html>
