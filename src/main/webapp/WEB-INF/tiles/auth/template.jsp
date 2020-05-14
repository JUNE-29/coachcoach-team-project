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
  
  <link href="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">

</head>

<body>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<tiles:insertAttribute name="header"/>

<main id="main" >
<div class="body-footer" >
<tiles:insertAttribute name="body"/>
</div>
</main>
<tiles:insertAttribute name="footer"/>

  <!-- Vendor JS Files -->
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/jquery.easing/bower_components/jquery-easing-original/jquery.easing.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/waypoints/lib/jquery.waypoints.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/isotope-layout/dist/isotope.pkgd.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/venobox/venobox/venobox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/node_modules/typed.js/lib/typed.min.js"></script>

</body>
</html>
