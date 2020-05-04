<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>코칭 스케쥴</h3>
<form action='add' method='post' enctype='multipart/form-data'>
<input name="memberProgramNo" value="${memberCoachingProgram.no}" type='hidden'>
회원명:${memberCoachingProgram.member.name}<br>
프로그램명:${memberCoachingProgram.programName} <br>
선택한 일자: <input type='Date' name='workoutDate'> <br>
<hr>
첨부할 파일1: <input class="file" type='file' name='files'> <br>
첨부할 파일2: <input class="file" type='file' name='files'> <br>
첨부할 파일3: <input class="file" type='file' name='files'> <br>

내용: <textarea name='plan' rows='20' cols='78'></textarea><br>
<button>저장</button>
</form>

<jsp:include page='../../footer.jsp'/>