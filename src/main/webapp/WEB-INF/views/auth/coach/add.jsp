<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.rigister_image {text-align: center; margin-top: 20px; margin-bottom: 10px;}
.text{text-align: center; margin-bottom: 30px;}
.title {margin-bottom: 5px;font-size: 35px;letter-spacing: -1px; font-weight: bold; }
.text_point {color:#01b1d7; font-weight: bold; }
.cofirmBtn_area {text-align: center;}
.cofirmBtn_area button[type=button] {display:inline-block; width:30%; height:50px; background:#1b71d2; color:#FFFFFF; font-weight:bold; font-size:15px; border:none;}
</style>

<div class="rigister_image">
<img height="100" src="../../../image/auth_celebrate_rigister.png">
</div>

<form action="../../../index.jsp">
<div class="text">
<h1 class="title">코치님! 가입을 축하드립니다.</h1> <br>
<b>코치코치 서비스는 <span class="text_point">이메일 인증</span>을 거친 후 사용 가능합니다.</b><br>
회원가입 시 입력하셨던 이메일로 인증메일이 발송되었습니다.<br>
인증 메일을 확인하시길 바랍니다.
</div>

<div class="cofirmBtn_area">
<button type="button" onclick="location.href='/coachcoach-team-project/index.jsp'">
  확인
</button>
</div>
</form>