<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.tit {margin-bottom: 20px;font-size: 35px;letter-spacing: -1px;font-weight: bold; text-align: center;}
.sign_area {width:600px;margin:50px auto 0;}
.sign_area {display:table; clear:both; content:'';}
.sign_area button[type="button"] {display:block; width:60%; height:60px; font-size:16px; font-weight:bold; color:#fff; border:0; margin-left: 120px;}
.sign_area .p_login{background:#01b1d7}
.sign_area .c_login{margin-top:10px;background:#1b71d2}
</style>


<h1 class="tit">코치코치 회원 가입을 환영합니다</h1>
<div class="sign_area">
<button type="button" class="p_login" onclick="location.href='member/addform' ">일반회원가입</button>
<button type="button" class="c_login" onclick="location.href='coach/addform' ">코치회원가입</button>
</div>

<!--  
<button type="button" onclick="window.open('https://www.naver.com')"> 네이버</button>
<button type="button" onclick="window.open('https://www.daum.net')"> 카카오</button>
<button type="button" onclick="window.open('https://www.google.com')"> 구글</button>
<button type="button" onclick="window.open('https://www.facebook.com')"> 페이스북</button>
-->