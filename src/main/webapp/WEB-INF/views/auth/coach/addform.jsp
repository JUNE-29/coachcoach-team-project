<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>


</style>

<h1 class="tit">코치 가입</h1>
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
             <td><input type='text' name= 'birth' id='userBirth'><br>
               <span id='alertBirth'><span class="info_T">※ 생년월일을 입력해주세요 예)19990101</span></span>
             </td>
         </tr>
         <tr>
              <th>연락처</th>
           <td>
          <input type='tel' name='tel1' id='userTel1' size = "3" maxlength= "3"> -
          <input type='tel' name='tel2' id='userTel2' size = "4" maxlength= "4"> -
          <input type='tel' name='tel3' id='userTel3' size = "4" maxlength= "4">
          </td>
          </tr>
          <tr>
              <th>이메일</th>
            <td><input type='text' name='email' id='userEmail'><br>
              <span id='alertEmail'><span class="info_T">※ 처음 로그인 시 이메일 인증이 있어야 하므로, 반드시 자주 사용하는 메일 주소를 입력해주세요.</span></span>
            </td>
          </tr>
          <tr>
             <th>소속</th>
             <td>
             <input type='text' name='' >
             </td>
          </tr>
          <tr>
          <th>사진</th>
          <td><input type='file' name='photoFile' ></td>
          </tr>
        </tbody>
        </table>
        <div class="join_ok_area">
          <button id="join_ok_btn" type="button">가입하기</button>
        </div>
</form>
</div>
    