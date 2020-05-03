<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>

<jsp:include page='../../header.jsp'/>
    
<h3>운동을 입력해주세요</h3>
<form action='add' method='post'>
<input name ='memberNo' value='${member.no}' type='hidden'>

<p>날짜를 선택해주세요.</p>
메모: <input name='memo' type='text'><br>
날짜: <input name='createDate' value='${today}'><br>

<button>저장</button>
</form>


<jsp:include page='../../footer.jsp'/>