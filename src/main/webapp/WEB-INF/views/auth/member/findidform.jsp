<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.find_userid_tit {font-size: 35px;letter-spacing: -1px; font-weight: bold;  margin-bottom: 8px;}
.find_userid_text {margin-bottom: 16px;}
.find_userid_area {width:100%;}
.find_userid_area table{width:100%; border-top:1px solid #000; border-bottom:1px solid #000;}
.first_th {border-bottom:1px solid #ddd;} 
.first_td {border-bottom:1px solid #ddd;} 
.find_userid_area table tr th {padding:20px;letter-spacing:-1px;color:#524E4E; font-size:13px; font-weight:normal;}
.find_userid_area table tr td {padding: 5px; margin-bottom: 25px; letter-spacing:-1px; font-size:14px; font-weight:normal; }
.find_userid_area table tr td {padding:20px;}
.find_userid_area table input{height:30px; font-size:12px;}
.find_userid_area table input[type=text] {width:45%; padding-left:10px; border:1px solid #aaa;}
.find_userid_area table input:placeholder {color:#777;}
.find_id_button_area {margin-top:20px; text-align:center;}
.find_id_button_area button[type=button] {display:inline-block; width:50%; height:50px; background:#01b1d7; font-weight:bold; font-size:15px; color:#fff; border:none;}

.id_result {text-align:center;}
.btn_btn-secondary{display:inline-block; border: 0; outline: 0; width:30%; height:50px; background:#01b1d7;  margin: 0 auto; color:#fff; font-weight:bold;}
</style>

<!-- .find_id_button_area button[type=button] {display:inline-block; width:50%; height:50px; background:#01b1d7; font-weight:bold; font-size:15px; color:#fff; border:none;}
 -->
<h1 class="find_userid_tit">아이디찾기</h1>
<h4 class='find_userid_text'> 인증된 이메일로 아이디 확인이 가능합니다.</h4>
<div class="find_userid_area">
<form action='searchid' method='post'>
  <table>
      <colgroup>
      <col style="width:20%" />
        <col style="width:70%" />
    </colgroup>
    <tbody>
      <tr>
        <th class="first_th">이름</th>
        <td class="first_td">
         <input name='name' id='userName' type='text' placeholder='ex) 홍길동'>
        </td>
      </tr>
      <tr>
        <th>이메일</th>
        <td>
         <input name='email' id='userEmail' type='text'  placeholder='ex) coachcoach.service@gmail.com'>
        </td>
      </tr>
    </tbody>
  </table>
  <div class="find_id_button_area">
  <button type="button" id="findIdbtn" class="btn_btn-primary" data-toggle="modal" data-target="#findIdModal">확인</button> <!-- 모달창으로 띄우기 -->
</div>
</form>
</div>

<!-- Modal -->
<div class="modal fade" id="findIdModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"><b>아이디 찾기 결과</b></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h2 class="id_result" id="id_value"></h2>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn_btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>







