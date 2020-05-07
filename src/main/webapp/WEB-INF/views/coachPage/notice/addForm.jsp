<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    trimDirectiveWhitespaces="true"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action='add' method='post'>
<h1>공지사항 등록</h1>
프로그램 선택
<select name='programNo'>
  <c:forEach items="${list}" var="item">
    <option value="${item.no}">${item.name}</option>
  </c:forEach>
</select>
제목: <input name='title' type='text'><br>
내용: <textarea name='content' rows='5' cols='60'></textarea><br>

<button>등록</button>
</form>
