<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>


<style>
.join_box{width:800px; margin:0 auto;}
.join_box table{width:100%;}
.join_box table > input{height:30px; border:1px solid red}
.join_box table button {min-width:120px;}
</style>

<h1>회원 가입</h1>
<div class="join_box">
<form name="form" action='add' method='post' enctype='multipart/form-data' >
<table>
  <colgroup>
      <col style="width:30%" />
        <col style="width:70%" />
    </colgroup>
    <tbody>
          <tr>
              <th>아이디</th>
          <td><input type='text' name='id' id='id' onkeyup='insertId()'>
          <input type='button' value="ID중복확인" onclick="idCheck()"><br>
          <span id='alertText'><span style='color #777'> ※ 아이디를 입력해주세요</span></span><br></td>
          </tr>
          <tr>
              <th>비밀번호</th>
          <td><input type='password' name='password' onkeyup='insertPwd()'></td>
          </tr>
          <tr>
              <th>비밀번호확인</th>
          <td><input type='password' name='password2' onkeyup='insertPwd()'><br>
              <span id='alertPwd'><span style='color #777'>※ 패스워드를 한번 더 입력해주세요</span></span>
          </td>
         </tr>
        <tr>
              <th>이름</th>
        <td><input type='text' name='name'></td>
        </tr>
        <tr>
              <th>성별</th>
          <td><input type="radio" name="gender" value="0"/>여자
          <input type="radio" name="gender" value="1"/>남자<br></td>
         </tr>
         <tr>
              <th>생년월일</th>
         <td><input type='text' name= 'birth' onkeyup='insertBirth()'><br>
             <span id='alertBirth'><span style='color #777'>※ 생년월일을 입력해주세요 예)19990101</span></span>
<br>
         </td>
         </tr>
         <tr>
              <th>연락처</th>
           <td>
          <input type='tel' name='tel1' size = "3" maxlength= "3"> -
          <input type='tel' name='tel2' size = "4" maxlength= "4"> -
          <input type='tel' name='tel3' size = "4" maxlength= "4">
          </td>
          </tr>
          <tr>
              <th>이메일</th>
            <td><input type='email' name='email'><button> 인증하기</button></td>
          </tr>
          <tr>
          <th>사진</th>
          <td><input type='file' name='photoFile' ></td>
          </tr>
        <tr>
          <td colspan="2"><button id="btn" type="button">가입하기</button></td>
        </tr>
        </tbody>
        </table>
</form>

<script>
"use strict"


document.querySelector("#btn").onclick = () => {
	var form = document.form
	
	if(form.id.value == ""){
		alert("아이디를 입력해야합니다.");
		obj.id.focus();
		return;
	}
	
	if(form.id.value.length < 4 || form.id.value.length > 10){
		alert('아이디는 4~10자 사이로 입력하세요');
		form.id.value = "";
		form.id.focus();
		return;
	}
	
	
	var password1RegExp = /^[a-zA-z0-9]{8,12}$/; //비밀번호 유효성 검사 (정규식표현법)
	if(!password1RegExp.test(form.password.value)){
		alert("비밀번호는 영문 대소문자와 숫자 8~12자리로 입력해야합니다!");
		form.password.value = "";
		form.password.focus();
		return;
	}
	
	
	if(form.password.value == "" || form.password2.value != form.password.value){
		alert("비밀번호를 정확히 입력해주세요");
		form.password2.value = "";
		form.password2.focus();
		return;
	}
	
	if(form.name.value == ''){
		alert("이름을 입력해주세요");
		form.name.focus();
		return;
	}
	
	if(form.gender.value == ''){
		alert("성별을 선택해주세요")
		form.gender.focus();
		return;
	}
	
	  var birthRegExp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	  if(form.birth.value == '' || !birthRegExp.test(form.birth.value)){
		alert("생년월일을 입력해주세요");
		form.birth.focus();
		return;
	}
	
	if(form.tel1.value == '' || form.tel2.value == '' || form.tel3.value == '' ){
		alert("연락처를 입력해주세요");
		form.alert.focus();
		return;
	}
	
	if(form.email.value == ''){
		    alert("이메일을 입력해주세요");
		    form.alert.focus();
		    return;
	  }
	
	 document.form.submit();
}


function insertId() {
	var form = document.form
	if(form.id.value.length < 4 || form.id.value.length > 10){
		document.getElementById("alertText").innerHTML=('<span style="color: red;"> 아이디는 4~10자 사이로 입력하세요</span>');
	return;
	} else {
		document.getElementById("alertText").innerHTML=('<span style="color: green;">정상적으로 입력되었습니다.</span>');
	}
}

// id 중복체크
function idCheck(){
	//새 창만들기
	// 파일명, 새창 이름, 다양한 옵션
	window.open("idCheckForm","idwin","width=400, height=350");
}



function insertPwd() {
	var form = document.form;
	
	if(form.password2.value == '' || form.password2.value != form.password.value){
		document.getElementById("alertPwd").innerHTML=('<span style="color: red";> 비밀번호가 일치하지 않습니다.</span>');
		return;
	} else {
		document.getElementById("alertPwd").innerHTML=('<span style="color: green";> 입력한 비밀번호와 일치합니다. </span>');
	}
}

function insertBirth() {
	
	var form = document.form;
	var birthRegExp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

	if(form.birth.value == '' || !birthRegExp.test(form.birth.value)){
		document.getElementById("alertBirth").innerHTML=('<span style="color: red;"> 생년월일을 똑바로 입력해주세요 예)19990102</span>');
	return;
	} else {
		document.getElementById("alertBirth").innerHTML=('<span style="color: green;"> 정상적으로 입력되었습니다.</span>');
	}
}


</script>

    