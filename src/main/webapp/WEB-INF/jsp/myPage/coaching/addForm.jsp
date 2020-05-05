<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
<form action='add' method='post' enctype='multipart/form-data'>

<input name="memberProgramNo" value="${memberCoachingProgram.no}" type='hidden'>
회원명:${memberCoachingProgram.member.name}<br>
프로그램명:${memberCoachingProgram.programName} <br>
Workout 일정: <input type='Date' name='startDate'> ~ <input type='Date' name='endDate'><br>
<hr>
첨부 파일: <input class="file" type='file' name='inputFiles'> <br>
첨부 파일: <input class="file" type='file' name='inputFiles'> <br>
첨부 파일: <input class="file" type='file' name='inputFiles'> <br>

내용: <textarea name='plan' rows='20' cols='78'></textarea><br>
<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>