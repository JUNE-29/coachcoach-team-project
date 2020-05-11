<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1>프로그램 수정</h1>
<form action='update' method='post'>
<input name='no' readonly type='text' value='${program.no}'><br>

<b>프로그램명:</b><input name='name' value='${program.name}'><br>
<b>프로그램 소개:</b><textarea name='introduce' rows='5' cols='60'>${program.introduce}</textarea><br>
<b>수업효과 키워드:</b>
<br>

<div data-toggle="buttons">
<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="1" hidden>하체튼튼
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="2" hidden>상체튼튼
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="3" hidden>근육위주
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="4" hidden>대회위주
</label>
<br>
<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="5" hidden>체력위주
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="6" hidden>체중감량
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="7" hidden>재활위주
</label>

<label class="btn btn-primary"> 
<input name="tags" type="checkbox" value="8" hidden>생활개선
</label>

</div>

<br>
<b>프로그램수강료</b> <input name='fee' type='text' value='${program.fee}'>원<br>
<b>프로그램타입</b> 
<select name="coachingType">
    <option value='온라인'>온라인</option>
    <option value='오프라인'>오프라인</option>
    <option value='온라인+오프라인'>온라인+오프라인</option>
</select>
<br>
<button>수정하기</button>
</form>
