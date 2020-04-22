<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
<form action='add' method='post' enctype='multipart/form-data'>
년월일 ~ 년월일<br>
<input type='text' name='title'><br>
파일첨부 <input type='file' name='photoFile'> 링크<br>

<textarea name='contents' rows='20' cols='100'></textarea><br>
<button>수정</button>
</form>

<jsp:include page='../../footer.jsp'/>