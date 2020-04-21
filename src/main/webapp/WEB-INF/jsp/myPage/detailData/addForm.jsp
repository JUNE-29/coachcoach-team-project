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

<p>오늘한 운동의 종목과 시간을 입력해주세요.</p><br>
<input name='workout' type='text'> <input name='workout' type='text'>분
<button>추가</button>

<p>오늘 한 운동의 종목들</p><br>
<textArea>workout들... 어쩌구... 저쩌구.. 운동</textArea>

<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>