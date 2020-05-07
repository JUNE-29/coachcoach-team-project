<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<form action='reject' method='post'>
  <h1>거절사유</h1>
  <h3>${memberCoachingProgram.member.name} 회원님의 요청을 거절하신 이유를 구체적으로 작성해 주세요.</h3>
  <input name='memberCoachingProgramNo' type='hidden' value='${memberCoachingProgram.no}'>
  <textarea name='content' rows='5' cols='60'></textarea><br>
  <br>
  <button>거절하기</button>
<hr>
</form>

    