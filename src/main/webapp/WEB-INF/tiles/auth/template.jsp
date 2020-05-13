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
  
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
  <link href="${pageContext.servletContext.contextPath}/resources_e/css/header.css" rel="stylesheet">
  <link href="${pageContext.servletContext.contextPath}/resources_e/css/style.css" rel="stylesheet">

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

</body>
</html>
