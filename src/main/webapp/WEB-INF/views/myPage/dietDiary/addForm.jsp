<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <h1 class="display" style="font-size:50px;  font-weight: bold; color:DeepSkyBlue;">Diet Diary</h1>
<div id="content" style="center" >
<p style="font-size:17px;  font-weight: bold; color: DimGray;"> - 오늘 먹은 사진을 선택해주세요! </p><br>
<p style="font-size:14px;  font-weight: normal; color: red;"> ※ 선택하지 않을 시 기본 이미지로 나타납니다. </p>

<form action='add' method='post' enctype='multipart/form-data'>
<input type='hidden' readonly name='memberNo' value='${member.no}'><br>
<input type='file' name='photoFile' ><br><br>
<textarea name='content' rows='5' cols='60'>어떤걸 드셨는 지 구체적으로 써주세요!</textarea><br>
<button class="btn btn-primary foodadd">확인</button>
</form>
</div>

