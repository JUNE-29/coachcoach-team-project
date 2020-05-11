<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
<h3 class="text-primary text-center">Diet Diary</h3>

<p>오늘 먹은 사진을 선택해주세요!</p><br>
<p>선택하지 않을 시 기본 이미지로 나타납니다.</p>
<form action='update' method='post' enctype='multipart/form-data'>
<input type='hidden' readonly name='no' value='${foodBoard.no}'><br>
<input type='hidden' readonly name='memberNo' value='${member.no}'><br>
<img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br>
<input type='file' name='photoFile'>
<textarea name='content' rows='5' cols='60'>${foodBoard.content}</textarea><br>
<button>수정</button>
</form>

</div>
