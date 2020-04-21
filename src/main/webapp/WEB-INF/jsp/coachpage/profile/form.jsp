<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>프로필 수정</h1>

<form action='update' method='post'>
이름: <input name='name' readonly type='text' value='${coach.name}'><br>
수업가능지역:<textarea name='title' rows='5' cols='60'>${coach.area}</textarea><br>
경력사항: <textarea name='title' rows='5' cols='60'>${coach.career}</textarea><br>
보유자격증: <textarea name='title' rows='5' cols='60'>${coach.certification}</textarea><br>
강사소개: <textarea name='title' rows='5' cols='60'>${coach.introduce}</textarea><br>
<button>내 프로필 수정</button>
</form>

<jsp:include page="../../footer.jsp"/>