<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../../header.jsp"/>

<h1>회원 가입</h1>
<form id="form" action='add' method='post' enctype='multipart/form-data' >
아이디:<input type='text' name='id' id='id'>4~12자의 영문대소문자와 숫자<br>
비밀번호: <input type='password' name='password' >4~12자의 영문대소문자와 숫자<br>
비밀번호확인: <input type='password' name='password2'><br>
이름:     <input type='text' name='name'><br>
성별:     <input type="radio" name="member" value="0"/>여자
          <input type="radio" name="member" value="1"/>남자<br>
생년월일: <input type='text' name= 'birth' ><br>
연락처:   <input type='tel' name='tel' ><br>
이메일:   <input type='email' name='email'><button> 인증하기</button><br>
사진:     <input type='file' name='photoFile' ><br>
<button id="btn" type="button">가입하기</button>
</form>

<script>
"use strict"

document.querySelector("#btn").onclick = () => {
	var id = document.querySelector("#id");
	if(id.value == ""){
		alert("아이디를 입력해야합니다.");
		return;
	}
	
	var idRegExp = /^[a-zA-Z0-9]{4,12}$/ //아이디 유효성 검사
	console.log(id);
	if(idRegExp.test(id) == false){
		alert("아이디는 영문 소문자와 숫자 4~12자리로 입력해야 합니다.");
		form.id.value = "";
		return;
	}
	
	var password = document.querySelector("#password");
	  var password2 = document.querySelector("#password2");
	  if(password.value == ""){
	     alert("비밀번호를 입력해야합니다.");
	     return;
	  }
	  
	  if(password2.value == ""){
	     alert("비밀번호를 입력해야합니다.");
	     return;
	  }

	  var passwordRegExp = /^[a-zA-z0-9]{8,12}$/; //비밀번호 유효성 검사
	  if(!passwordRegExp.test(password)){
	    alert("아이디는 영문 소문자와 숫자 4~12자리로 입력해야 합니다.");
	    form.password.value = "";
	    form.password.forcus();
	    return;
	  }
	  
	  if(password1 != password2){
	    alert("두 비밀번호가 맞지 않습니다.");
	    form.password2.value = "";
	    form.password2.focus();
	    return;
	  }
	  
	  if(id == password1) {
	    alert("아이디와 비밀번호는 같을 수 없습니다!");
	    form.password1.value = "";
	    form.password2.value = "";
	    form.password2.focus();
	    return;
	  }
	
	
	 document.querySelector("#form").submit();
}



</script>

<jsp:include page="../../footer.jsp"/>
    