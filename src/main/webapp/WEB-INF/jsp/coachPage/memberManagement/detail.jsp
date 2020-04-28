<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>회원 상세정보</h1>
<img src='/upload/member/' height='80'><br> 
<form action='list' method='get' enctype='multipart/form-data'>
이름: 홍길동 <br>
아이디: hong01 <br>
연락처: 010-000-0000 <br>
이메일: aaa@test.com <br>
나이: 20세 <br>
프로그램명: 4주완성 체력기르기! <br>
시작일: 2020-04-22<br>
종료일: 2020-05-22<br>
특이사항: 3개월 전 교통사고 때문에 다리 좀 아픔<br>
<p><button>확인</button>
</form>


<jsp:include page="../../footer.jsp"/>
    