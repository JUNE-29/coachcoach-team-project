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
<link href="${pageContext.servletContext.contextPath}/resources_e/css/header.css" rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/resources_e/css/style.css" rel="stylesheet">
</head>
<body>

<tiles:insertAttribute name="header"/>
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

