<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<style>
.find_userpw_tit {font-size: 35px;letter-spacing: -1px; font-weight: bold;  margin-bottom: 8px;}
.find_userpw_text {margin-bottom: 16px;}
.find_userpw_area {width:100%;}
.find_userpw_area table{width:100%; border-top:1px solid #000; border-bottom:1px solid #000;}
.first_th {border-bottom:1px solid #ddd;} 
.first_td {border-bottom:1px solid #ddd;} 
.find_userpw_area table tr th {padding:20px;letter-spacing:-1px;color:#524E4E; font-size:13px; font-weight:normal;}
.find_userpw_area table tr td {padding: 5px; margin-bottom: 25px; letter-spacing:-1px; font-size:14px; font-weight:normal; }
.find_userpw_area table tr td {padding:20px;}
.find_userpw_area table input{height:30px; font-size:12px;}
.find_userpw_area table input[type=text] {width:45%; padding-left:10px; border:1px solid #aaa;}
.find_userpw_area table input:placeholder {color:#777;}
.find_pw_button_area {margin-top:20px; text-align:center;}
.find_pw_button_area button[type=button] {display:inline-block; width:50%; height:50px; background:#01b1d7; font-weight:bold; font-size:15px; color:#fff; border:none;}

</style>

<form name="form" action="searchPassword" method="post">
<h1 class="find_userpw_tit">비밀번호 찾기</h1>
<h4 class='find_userpw_text'> 인증된 이메일로 비밀번호 확인이 가능합니다.</h4>
<div class="find_userpw_area">
<table>
  <colgroup>
    <col style="width:20%"/>
    <col style="width: 70%"/>
  </colgroup>
  <tbody>
     <tr>
       <th class="first_th">아이디</th>
        <td class="first_td">
          <input name='userId' id="userId" type='text' placeholder="ex) coach"><br>
        </td>
      <tr>
        <th>이메일</th>
          <td>
           <input name='userEmail' id='userEmail' type='text'  placeholder='ex) coachcoach.service@gmail.com'>
         </td>
      </tr>
  </tbody>
</table>
<div class="find_pw_button_area">
<button type="button" id="findPwBtn">확인</button>
</div>
</div>
</form>

