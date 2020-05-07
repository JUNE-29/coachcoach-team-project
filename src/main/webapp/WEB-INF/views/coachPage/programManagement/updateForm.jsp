<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1>프로그램 수정</h1>
<form action='update' method='post'>
<input name='no' readonly type='text' value='${program.no}'><br>

<b>프로그램명:</b><input name='name' value='${program.name}'><br>
<b>프로그램 소개:</b><textarea name='introduce' rows='5' cols='60'>${program.introduce}</textarea><br>
<b>수업효과 키워드:</b><br>
<b>프로그램수강료</b> <input name='fee' type='text' value='${program.fee}'>원<br>
<b>프로그램타입</b> <select name="coachingType">
        <option selected> 선택</option>
        <option value='온라인'>온라인</option>
        <option value='오프라인'>오프라인</option>
        <option value='온라인+오프라인'>온라인+오프라인</option>
    </select>
<br>
<button>수정하기</button>
</form>
