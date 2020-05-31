<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.text{text-align: center; margin-bottom: 20px;}
.title {margin-bottom: 20px;font-size: 35px;letter-spacing: -1px;font-weight: bold; }
.login_area {text-align: center;}
.login_area button[type=button] {display:inline-block; width:30%; height:50px; background:#01b1d7; font-weight:bold; font-size:15px; border:none; color: #FFFFFF;}
</style>

<div class="text">
<h1 class="title"> 이메일 인증이 완료되었습니다. </h1>
 <h5>코치코치의 다양한 서비스를 이용하실 수 있습니다.</h5>
<br>
</div>

<div class="login_area">
  <button type="button" onclick="location.href='/coachcoach-team-project/app/auth/login'">
    로그인 하러가기
  </button>
  </div>


