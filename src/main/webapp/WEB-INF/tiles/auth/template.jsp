<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<link rel="stylesheet" href="" />
<!--  
<c:if test="${not empty refreshUrl}">
<meta http-equiv="Refresh" content="${refreshUrl}">
</c:if>
-->

<title>CoachCoach-team-project</title>
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
      <!-- Bootstrap CSS file -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
 
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

  <style>
    .innerCont {margin:50px auto; width:1050px;}
  </style>
</head>

<body>
 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<tiles:insertAttribute name="header"/>
<hr style="
    margin-top: 0px;"
>

<div class="innerCont">
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
