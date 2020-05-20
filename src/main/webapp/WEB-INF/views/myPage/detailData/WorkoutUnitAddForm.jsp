<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<input name ='workoutListNo' value='${memberWorkout.workoutListNo}' type='hidden'>

<script type="text/javascript">

function add_div(){
    var div = document.createElement('div');
    div.innerHTML = document.getElementById('room_type').innerHTML;
    document.getElementById('field').appendChild(div);
}


function remove_div(obj){
document.getElementById('field').removeChild(obj.parentNode);
}
</script>


  <label for="image">오늘한 운동의 종목과 시간을 입력해주세요.</label>
  <input type="button" value="추가" onclick="add_div()">


<div id="room_type">
<div class="form-group">

  
  <table>
    <tr>
  <td>운동종목</td>
  <td>
    <select name="tags" id="sprotUnit1">
      <option selected>선택해주세요</option>
       <option value="1">조깅</option>
       <option value="2">수영</option>
       <option value="3">등산</option>
       <option value="4">서핑</option>
       <option value="5">헬스</option>
       <option value="6">걷기</option>
       <option value="7">요가</option>
       <option value="8">필라테스</option>
       <option value="9">테니스</option>
       <option value="10">배드민턴</option>
       
      
       
    </select>
  </td>
    </tr>
    
    <tr>
      <td>운동시간</td>
      <td><select name="tags" id="sprotTime1">
      <option value="선택해주세요">선택해주세요</option>
      <option value="1">10</option>
      <option value="2">20</option>
      <option value="3">30</option>
      <option value="4">40</option>
      <option value="5">50</option>
      <option value="6">60</option>
      <option value="7">70</option>
      <option value="8">80</option>
      <option value="9">90</option>
      <option value="10">100</option>
      <option value="11">120</option>
      <option value="12">150</option>
      <option value="13">180</option>
      <option value="14">210</option>
      
    </select> 
    </td>
    </tr>
</table>

</div>
  <input type="button" value="삭제" onclick="remove_div(this)">
</div>

<div id="field"></div>




<button>저장</button>

