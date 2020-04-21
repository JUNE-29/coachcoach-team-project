<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../header.jsp'/>

<h3>Diet Diary</h3>
<form action='add' method='post' enctype='multipart/form-data'>
<p>오늘 먹은 사진을 선택해주세요!</p><br>
<p>선택하지 않을 시 기본 이미지로 나타납니다.</p>

<input type='file' name='photoFile'><br>
<textarea name='contents' rows='5' cols='60'>어떤걸 드셨는 지 구체적으로 써주세요!</textarea><br>
<button>확인</button>
</form>

<jsp:include page='../footer.jsp'/>