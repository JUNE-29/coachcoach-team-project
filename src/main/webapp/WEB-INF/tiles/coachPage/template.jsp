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
  <link href="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}/css/coachPage/style.css?ver=1" rel="stylesheet">

</head>
<body>

<tiles:insertAttribute name="side"/>

<main id="main">
<div id="content">
<tiles:insertAttribute name="body"/>
</div>
<tiles:insertAttribute name="footer"/>
</main>
  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery.easing/bower_components/jquery-easing-original/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/waypoints/lib/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/isotope-layout/dist/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/typed.js/lib/typed.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.servletContext.contextPath}/js/coachPage/main.js?ver=1"></script>


</body>
</html>