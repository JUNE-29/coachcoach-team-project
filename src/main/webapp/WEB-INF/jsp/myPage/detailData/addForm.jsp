<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>운동을 입력해주세요</h3>
<form action='add' method='post'>

<p>날짜를 선택해주세요.</p><br>
<input name='year' type='text'>년 <input name='month' type='text'>월 <input name='day' type='text'>일<br>

<p>오늘 몸무게를 입력해주세요.</p><br>
<input name='weight' type='text'><br>

<p>오늘 걸음수를 입력해주세요.</p><br>
<input name='steps' type='text'><br>

<br>
<!-- 운동 종목/시간 입력 -->
   
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
    <select name="items">
      <option value="선택해주세요">선택해주세요</option>
      <option value="조깅">조깅</option>
      <option value="수영">수영</option>
      <option value="등산">등산</option>
      <option value="서핑">서핑</option>
      <option value="헬스">헬스</option>
      <option value="걷기">걷기</option>
      <option value="요가">요가</option>
      <option value="필라테스">필라테스</option>
      <option value="테니스">테니스</option>
      <option value="배드민턴">배드민턴</option>
    </select>
  </td>
    </tr>
    
    <tr>
      <td>운동시간</td>
      <td><select name="items">
      <option value="선택해주세요">선택해주세요</option>
      <option value="10분">10분</option>
      <option value="20분">20분</option>
      <option value="30분">30분</option>
      <option value="40분">40분</option>
      <option value="50분">50분</option>
      <option value="60분">60분</option>
      <option value="70분">70분</option>
      <option value="80분">80분</option>
      <option value="90분">90분</option>
      <option value="100분">100분</option>
      <option value="120분">120분</option>
      <option value="180분">180분</option>
      <option value="240분">240분</option>
      <option value="직접입력">직접입력</option>
    </select> 
    </td>
    </tr>
</table>

</div>
  <input type="button" value="삭제" onclick="remove_div(this)">
</div>

<div id="field"></div>



<p>오늘 한 운동의 종목들</p><br>
<textArea>workout들... 어쩌구... 저쩌구.. 운동</textArea>

<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>