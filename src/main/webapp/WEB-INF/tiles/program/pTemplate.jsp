<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>CoachCoach</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
<link href="${pageContext.servletContext.contextPath}/resources_e/css/pStyle.css" rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/resources_e/css/header.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<tiles:insertAttribute name="header"/>

<div class='container'>

<tiles:insertAttribute name="body"/>



</div>
<tiles:insertAttribute name="footer"/>

  <script src="${pageContext.servletContext.contextPath}/resources_e/js/pMain.js"></script>
 </body>
</html>
