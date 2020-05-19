<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>CoachCoach-team-project</title>
<link rel='stylesheet' href='${pageContext.getServletContext().getContextPath()}/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link href="${pageContext.servletContext.contextPath}/resources_e/css/style.css" rel="stylesheet">

    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
      <!-- Bootstrap CSS file -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css.map" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/css/style.css" rel="stylesheet">
  
    <link href="${pageContext.servletContext.contextPath}/resources_e/css/header.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>

<tiles:insertAttribute name="header"/>
<hr style="
    margin-top: 0px;"
>

<div class="innerCont">
<div class="sidebar">
<tiles:insertAttribute name="side"/>
</div>
<div class="content">
<tiles:insertAttribute name="body"/>
</div>
</div>
<tiles:insertAttribute name="footer"/>

<script src='${pageContext.getServletContext().getContextPath()}/node_modules/jquery/dist/jquery.min.js'></script>
<script src='${pageContext.getServletContext().getContextPath()}/node_modules/@popperjs/core/dist/umd/popper.min.js'></script>
<script src='${pageContext.getServletContext().getContextPath()}/node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='${pageContext.getServletContext().getContextPath()}/node_modules/sweetalert/dist/sweetalert.min.js'></script>
<script src='${pageContext.getServletContext().getContextPath()}/js/myCoach/<tiles:getAsString name="jsFilename"></tiles:getAsString>'></script>
</body>
</html>

