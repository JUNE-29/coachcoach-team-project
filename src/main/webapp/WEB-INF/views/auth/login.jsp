<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.tit {margin-bottom: 20px;font-size: 35px;letter-spacing: -1px;font-weight: bold; text-align: center;}
.login_area {width:600px;margin:50px auto 0;}
.login_area:after {display:table; clear:both; content:'';}
.login_area button[type="button"] {display:block; width:60%; height:60px; font-size:16px; font-weight:bold; color:#fff; border:0; margin-left: 120px;}
.login_area .p_login{background:#01b1d7}
.login_area .c_login{margin-top:10px;background:#1b71d2}
.join_ok_area { text-align:center;}
.join_ok_area a {display:inline-block; width:20%; height:50px; line-height:50px; background:#fff; font-size:15px; color:#596061;}
</style>

<h1 class="tit">코치코치에 오신 것을 환영합니다.</h1>
<div class="login_area">
	<button type="button" class="p_login" onclick="location.href='member/form'">개인회원로그인</button>
	<button type="button" class="c_login" onclick="location.href='coach/form'">코치회원로그인</button>
</div>
<div class="join_ok_area">
  <a href="signup">아직 계정이 없으신가요?</a>
</div>
    