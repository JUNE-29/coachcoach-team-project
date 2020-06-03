<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<div>
  <h1 class="display" style="font-size:50px;  font-weight: bold; color:DeepSkyBlue;">Diet Diary</h1><br>

<p style="font-size:17px;  font-weight: bold; color: DimGray;">오늘 먹은 사진을 선택해주세요!</p><br>
<p style="font-size:14px;  font-weight: normal; color: red;"> ※ 선택하지 않을 시 기본 이미지로 나타납니다.</p><br>
<form action='update' method='post' enctype='multipart/form-data'>
<input type='hidden' readonly name='no' value='${foodBoard.no}'>
<input type='hidden' readonly name='memberNo' value='${member.no}'>
<img src='${pageContext.servletContext.contextPath}/upload/foodBoard/${foodBoard.photoFilePath}' height='300'><br><br>
<input type='file' name='photoFile'><br><br>
<textarea name='content' rows='5' cols='60'>${foodBoard.content}</textarea><br>
<button class="btn btn-danger">수정</button>
</form>

</div>
