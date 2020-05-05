<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<title>CoachCoach</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
<style>
body {
  background-color: LightGray;
}
div.container {
  background: white;
  border: 1px solid gray;
  width: 600px;
}
#star_grade a{
        text-decoration: none;
        color: gray;
    }
#star_grade a.on{
        color: yellow;
    }
</style>
</head>
<body>
<nav class='navbar navbar-expand-lg navbar-dark bg-dark'>
<a class='navbar-brand' href='#'>코치코치</a>
<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNav' aria-controls='navbarNav' aria-expanded='false' aria-label='Toggle navigation'>
  <span class='navbar-toggler-icon'></span>
</button>
<div class='collapse navbar-collapse' id='navbarNav'>
  <ul class='navbar-nav mr-auto'>
    <li class='nav-item'>
      <a class='nav-link' href='#'>코치코치소개</span></a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='/coachcoach-team-project/app/program/list'>코치찾기</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='#'>고객센터</a>
    </li>
  </ul>
<c:if test="${not empty loginUser}">
  <span class='navbar-text'>${loginUser.name}</span>
  <a href='/coachcoach-team-project/app/auth/logout' class='btn btn-success btn-sm'>로그아웃</a>
</c:if>
<c:if test="${empty loginUser}">
  <a href='/coachcoach-team-project/app/auth/login' class='btn btn-success btn-sm'>로그인</a>
</c:if> 
</div>
</nav>
<div class='container'>

<h1>후기작성</h1>

<p id="star_grade">
        <a href="star_rate">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
</p>

<form action='reviewUpdate' method='post' enctype='multipart/form-data'>
<textarea name='review' rows='5' cols='60' value="후기를 등록해주세요!"></textarea><br>
<input name='no' type='hidden' value='${no}'><br>
<button>확인</button>
</form>

<script>
        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on"); 
            $(this).addClass("on").prevAll("a").addClass("on");
            return false;
        });
</script>

<jsp:include page="../footer.jsp"/>
