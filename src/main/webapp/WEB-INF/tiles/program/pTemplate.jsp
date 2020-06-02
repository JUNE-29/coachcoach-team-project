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
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
      <!-- Bootstrap CSS file -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap-grid.css.map" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/resources/assets/css/style.css" rel="stylesheet">

<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel='stylesheet' href='${pageContext.getServletContext().getContextPath()}/node_modules/bootstrap/dist/css/bootstrap.min.css'>

<link href="${pageContext.servletContext.contextPath}/resources_e/css/pStyle.css" rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/resources_e/css/header.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>
<body>
<tiles:insertAttribute name="header"/>
<hr style="
    margin-top: 0px;"
>

<div class='container'>
<tiles:insertAttribute name="body"/>
</div>

<tiles:insertAttribute name="footer"/>

  <script src="${pageContext.servletContext.contextPath}/resources_e/js/pMain.js?ver=1"></script>
</body>
</html>
