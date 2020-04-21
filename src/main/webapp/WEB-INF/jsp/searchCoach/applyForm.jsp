 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>프로그램 신청서</h1>
<h3>[인적사항]</h3>
이름: 홍길동<br>
성별: 남자<br>
생년월일: 1900-01-01<br>
연락처: 000-0000-0000<br>
<form action='applyDetail' method='post'>
특이사항:<br>
<textarea name='remark' rows='5' cols='60'></textarea><br>
<h3>[프로그램 세부사항]</h3>
프로젝트<br>
운동 시작일: <select name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select><br>
<button>다음</button>
</form>



<jsp:include page="../footer.jsp"/>
