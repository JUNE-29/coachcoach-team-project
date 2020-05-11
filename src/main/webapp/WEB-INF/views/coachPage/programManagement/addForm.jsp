<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form action='add' method='post'>
<h1>프로그램 등록</h1>
<input name="coachNo" type='hidden' value='${coachNo}'><br>
<b>프로그램명:</b> <input name='name' type='text'> <br>
<b>프로그램 소개:</b> <textarea name='introduce' rows='5' cols='60' ></textarea><br>
<b>수업효과 키워드:</b><br>

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

<b>프로그램수강료</b><input name='fee' type='text'>원 <br>
<b>프로그램타입</b> 
    <select name="coachingType">
        <option value='온라인'>온라인</option>
        <option value='오프라인'>오프라인</option>
        <option value='온라인+오프라인'>온라인+오프라인</option>
    </select>
<br>
<button>등록</button>
</form>
