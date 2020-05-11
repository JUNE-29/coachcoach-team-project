<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>



<div style="text-align:center">
<h3>아이디 중복확인</h3>
<form action='idCheckPro' method='post' onsubmit="return blankCheck(this)">

아이디:<input type='text' name='id' maxlength="10" autofocus>
<input type="submit" value="중복확인">
</form>
</div>

<script>
"use strict"

function blankCheck(f){
	var id=f.id.value;
	id=id.trim();
	if(id.length<4 || id.length>10){
		alert("아이디는 4자이상 10자이하로 입력해주세요");
	return false;
	}
	retrun true;
}
</script>
