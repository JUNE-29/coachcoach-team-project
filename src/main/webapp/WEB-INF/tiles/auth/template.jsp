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
<!--  
<c:if test="${not empty refreshUrl}">
<meta http-equiv="Refresh" content="${refreshUrl}">
</c:if>
-->

 <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/sweetalert2/dist/sweetalert2.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css" rel="stylesheet">
  <style>
    .innerCont {margin:50px auto; width:1050px;}
  </style>
</head>

<body>
<tiles:insertAttribute name="header"/>
<hr style="margin-top: 0px;">

<div class="innerCont">
<tiles:insertAttribute name="body"/>
</div>
<tiles:insertAttribute name="footer"/>


  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery/dist/jquery.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery.easing/bower_components/jquery-easing-original/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/waypoints/lib/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/isotope-layout/dist/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/typed.js/lib/typed.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/sweetalert2/dist/sweetalert2.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/datatables.net/js/jquery.dataTables.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/datatables.net-bs4/js/dataTables.bootstrap4.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>
    <!-- Template Main JS File -->
 <!--  <script src="${pageContext.servletContext.contextPath}/resources_j/js/user.js"></script>  -->
 <script src='${pageContext.servletContext.contextPath}/resources_j/auth/<tiles:getAsString name="jsFileMember"></tiles:getAsString>'></script>
</body>
</html>
