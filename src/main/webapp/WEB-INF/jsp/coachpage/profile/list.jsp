<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>프로필</h1>

  <h1>받은요청</h1>
  
  <table border='1'>
  <tr>
    <th>이름</th>
    <th>김태희</th>
  </tr>
  
  <tr>
    <th>수업가능지역</th>
    <th>서울, 경기</th>
  </tr>
  
  <tr>
    <th>경력사항</th>
    <th>경력사항1, 경력사항2</th>
  </tr>
  
  <tr>
    <th>보유자격증</th>
    <th>자격증1, 자격증2</th>
  </tr>
  
  <tr>
    <th>강사소개</th>
    <th>안녕하세요. 김태희 강사입니다.</th>
  </tr>
  
  </table>
  
  <a href='form'>내 프로필 수정</a><br>

<hr>



<!--   
  <c:if test="${not empty coach}">
이름: ${coach.name}<br>
수업가능지역: ${coach.area}<br>
경력사항: ${coach.career}<br>
보유자격증: ${coach.certification}<br>
강사소개:${coach.introduce}<br>

<p>
<a href='updateForm?no=${coach.no}'>내 프로필 수정</a></p>
</c:if>

<c:if test="${empty requestScope.coach}">
<p>해당 게시물이 없습니다.</p>
</c:if>

-->  

<jsp:include page="../../footer.jsp"/>