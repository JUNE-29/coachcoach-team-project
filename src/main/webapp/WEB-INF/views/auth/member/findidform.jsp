<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<style>
.find_userid_tit {font-size: 35px;letter-spacing: -1px; font-weight: bold; }
.find_userid_area {width:600px;margin:50px auto 0;}
.find_userid_area .find_userid_text {margin-bottom: 20px;text-align: center;}
.find_userid_area table tr td { padding: 5px; margin-bottom: 25px; letter-spacing:-1px; font-size:14px; font-weight:normal; text-align: center;}
</style>


<h1 class="find_userid_tit">아이디찾기</h1>
<div class="find_userid_area">
<!-- <form action='findid' method='post'>  -->
  <h4 class='find_userid_text'> 인증된 이메일로 아이디 확인이 가능합니다.</h4>
  <table>
      <colgroup>
      <col style="width:20%" />
        <col style="width:70%" />
    </colgroup>
    <tbody>
      <tr>
         <td>
        아이디: <input name='id' type='text'><br>
        </td>
      </tr>
      <tr>
        <td>
        이메일: <input name='email' type='text' value=''>
        <br>
        </td>
      </tr>
    </tbody>
  </table>
  <button type="button" data-toggle="modal" data-target="#findUserIdModal">확인</button> <!-- 모달창으로 띄우기 -->
<!-- </form>  -->
</div>

<!-- Modal -->
<div id="findUserIdModal" class="modal fade" role="dialog"> 
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">x</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<script type="text/JavaScript" src="../../resources_j/js/userfindId.js"></script>





