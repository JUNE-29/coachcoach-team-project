<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.tit {margin-bottom: 20px;font-size: 35px;letter-spacing: -1px;font-weight: bold; text-align: center;}
.login_box{width:600px; margin:50px auto 0;}
.login_box table input:placeholder {color:#777;}
.login_box table tr td { padding: 5px; margin-bottom: 25px; letter-spacing:-1px; color:#aaa; font-size:13px; font-weight:normal; text-align: center;}
.login_box table input { ime-mode: inactive; width: 250px; height: 40px; border: 1px solid #d9d9de;}
.login_box .save_id_checkbox_area {text-align: center;}
.save_id_checkbox_area label {font-size:13px;}
.login_ok_area {margin-top:20px; text-align:center;}
.login_ok_area button[type=button] {display:inline-block; width:50%; height:50px; background:#1b71d2; font-weight:bold; font-size:15px; color:#fff; border:none;}
.find_area { text-align:center;}
.find_area a {display:inline-block; width:10%; height:50px; line-height:50px; background:#fff; font-size:15px; color:#596061;}
</style>


<h1 class="tit">코치코치에 오신 것을 환영합니다.</h1>
<div class="login_box">
<form action='login' method='post'>
<table>
  <colgroup>
      <col style="width:20%" />
        <col style="width:70%" />
    </colgroup>
    <tbody>
      <tr>
          <td> 
           <input name='id' type='text' 
           id="inputid" placeholder="아이디 입력" value='${id}'>
          </td>
       </tr>
       <tr>
          <td>
           <input name='password' placeholder="비밀번호 입력" type='password'><br>
          </td>
        </tr>
    </tbody>
</table>

<div class="save_id_checkbox_area">
<input type='checkbox' id="save_id"name='saveId'> 
<label for="si">아이디 저장해두기</label><br>
</div>
<div class="login_ok_area">
<button type="button">로그인</button>
</div>
<p></p>
</form>
</div>

<div class="find_area">
<a href='findidform'>아이디 찾기</a> |
<a href='findpasswordform'>비밀번호 찾기</a>
</div>
