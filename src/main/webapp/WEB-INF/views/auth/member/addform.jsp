<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    
<style>
.tit {margin-bottom: 20px;font-size: 35px;letter-spacing: -1px;font-weight: bold;}
.join_box{width:100%;}
.join_box table{width:100%; border-top:2px solid #000; border-bottom:2px solid #000;}
.join_box table tr {border-bottom:1px solid #ddd;}
.join_box table tr:last-child {border-bottom:0;}
.join_box table tr.border_N {border-bottom:0;}
.join_box table tr th {padding:20px;letter-spacing:-1px;color:#524E4E; font-size:13px; font-weight:normal;}
.join_box table tr td {padding:20px;}
.join_box table tr td .info_T{color:#6A6D6D; font-size:12px;}
.join_box table tr td .info_T_box {display:block;}
.join_box table input{height:30px; font-size:12px;}
.join_box table input[type=text], .join_box table input[type=password] {width:45%; padding-left:10px; border:1px solid #aaa;}
.join_box table input.confim {padding:0 10px; background:#fff; color:#01b1d7; font-weight: bold; border:1.3px solid; border-color: #01b1d7;}
.join_box table input:placeholder {color:#777;}
.join_box table button {min-width:120px;}
.join_box table tr td.gender input[type=radio] {vertical-align:middle;}
.join_box table tr td.gender label {display:inline-block; margin-left:5px; font-size:13px;}
.join_ok_area {margin-top:20px; text-align:center;}
.join_ok_area button[type=button] {display:inline-block; width:50%; height:50px; background:#01b1d7; font-weight:bold; font-size:15px; color:#fff; border:none;}
</style>




<h1 class="tit">회원 가입</h1>
<div class="join_box">
<form name="form" action='add' method='post' enctype='multipart/form-data' >
<table>
  <colgroup>
      <col style="width:20%" />
        <col style="width:70%" />
    </colgroup>
    <tbody>
          <tr>
              <th>아이디</th>
		          <td>
		            <input type='text' name='id' id='userid'>
			          <input type='button' id='idck' value="ID중복확인" class="confim" ><br>
			          <span id='alertText'><span class="info_T"> ※ 공백 없이 입력하세요.</span></span><br>
			        </td>
          </tr>
          <tr>
              <th>비밀번호</th>
		          <td>
		            <div><input type='password' name='password' id="password" placeholder="비밀번호를 입력해주세요." ></div>
		            <div style="margin-top:5px;">
		              <input type='password' name='password2' id="password2" placeholder="비밀번호 확인을 위해 다시 한번 입력해주세요." >
		              <span class="info_T_box" id='alertPwd'>
		                <span class="info_T">※ 8~12자 영문 대문자/소문자/숫자로 입력해야합니다.</span>
		              </span>
		            </div>
		          </td>
          </tr>
	        <tr>
	            <th>이름</th>
	            <td><input type='text' name='name'  id='userName'></td>
	        </tr>
          <tr>
              <th>성별</th>
              <td class="gender">
                <label for="wm"><input type="radio" name="gender" id="wm" value="0"/>여자</label>
                <label for="man"><input type="radio" name="gender" id="man" value="1"/>남자</label>
             </td>
          </tr>
         <tr>
            <th>생년월일</th>
	           <td><input type='text' name= 'birth' id='birth'><br>
	             <span id='alertBirth'><span class="info_T">※ 생년월일을 입력해주세요 예)19990101</span></span>
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
            <td><input type='email' name='email'></td>
          </tr>
          <tr>
          <th>사진</th>
          <td><input type='file' name='photoFile' ></td>
          </tr>
        </tbody>
        </table>
        <div class="join_ok_area">
          <button id="btn" type="button">가입하기</button>
        </div>
</form>
</div>




    