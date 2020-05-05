 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<form action='applyList' method='post'>
<h1>프로그램 신청서</h1>
<h3>[회원정보]</h3>
이름: ${member.name}<br>
성별: ${member.gender}<br>
생년월일: ${member.birth}<br>
연락처: ${member.tel}<br>
특이사항:<br> 
<textarea name=remark rows='5' cols='60' placeholder='코치에게 알려줄 정보를 입력해주세요.'>
</textarea><br>

<h3>[프로그램 세부사항]</h3>
프로그램명  ${program.name}<br>
운동 시작일<input name='startDate' type='text' placeholder='예)2021/05/01'><br>
* 모든 프로그램은 한달 단위로 진행됩니다.<br>
<button>신청하기</button>
<input name='programNo' type='hidden' value='${program.no}'>
<input name='memberNo' type='hidden' value='${member.no}'>
</form>

<jsp:include page="../footer.jsp"/>
