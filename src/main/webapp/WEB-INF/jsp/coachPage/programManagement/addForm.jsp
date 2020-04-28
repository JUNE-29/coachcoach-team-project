<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../../header.jsp"/>

<form action='add' method='post'>
<h1>프로그램 등록</h1>
<input name="coachNo" type='hidden' value='1'><br>
<b>프로그램명:</b> <input name='name' type='text'> <br>
<b>프로그램 소개:</b> <textarea name='introduce' rows='5' cols='60' ></textarea><br>
<b>수업효과 키워드:</b><br>
<!-- 
<input class="btn btn-outline-success" type="button" value="상체튼튼">
<input class="btn btn-outline-success" type="button" value="하체튼튼">
<input class="btn btn-outline-success" type="button" value="근육위주">
<input class="btn btn-outline-success" type="button" value="대회위주"><br>
<input class="btn btn-outline-success" type="button" value="체력위주">
<input class="btn btn-outline-success" type="button" value="체중감량">
<input class="btn btn-outline-success" type="button" value="재활위주">
<input class="btn btn-outline-success" type="button" value="생활개선"> <br>
 -->
<b>프로그램수강료</b><input name='fee' type='text'>원 <br>
<b>프로그램타입</b> <select name="coachingType">
        <option selected> 선택</option>
        <option value='1'>온라인</option>
        <option value='2'>오프라인</option>
        <option value='3'>온라인+오프라인</option>
    </select>
<br>
<button>등록</button>
</form>
<jsp:include page="../../footer.jsp"/>