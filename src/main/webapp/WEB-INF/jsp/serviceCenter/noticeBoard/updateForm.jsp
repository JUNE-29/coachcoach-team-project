<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>공지사항 변경</h1>

<form action='update' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' value='${noticeboard.no}'>
내용: <textarea name='title' rows='5' cols='60'>${noticeboard.title}</textarea><br>
<img src='${pageContext.request.getContextPath()}/upload/notice/${noticeboard.file_path}'>
사진: <input name='photo' type='file'><br> 
<button>변경</button>
</form>
<jsp:include page="../../footer.jsp"/>
