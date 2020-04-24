<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<div>
<h3 class="text-primary text-center">Diet Diary</h3>

<form action='update' method='post' enctype='multipart/form-data'>
<input type='text' readonly name='no' value='${foodBoard.no}'><br>
<input type='text' readonly name='memberNo' value='1'><br>
<img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br>
<input type='file' name='photoFile'>
<textarea name='content' rows='5' cols='60'>${foodBoard.content}</textarea><br>
<button>수정</button>
</form>

</div>
<jsp:include page='../../footer.jsp'/>