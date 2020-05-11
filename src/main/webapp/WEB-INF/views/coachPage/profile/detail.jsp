<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="detailProfile">
  <h1 class="highlight">프로필</h1>
  <div class="row">
  <div class="photo">
  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' class="img-thumbnail"><br>
  </div>
  
  <div class="content_box">
  <section class="name">
    <div class="col1">이름</div>
    <div class="value">${coach.name}</div>
  </section>
  <section class="area">
    <div class="col1">수업가능지역</div>
    <div class="value">${coach.area}</div>
  </section>
  <section class="career">
    <div class="col1">경력사항</div>
    <div class="value">${coach.career}</div>
  </section>
  <section class="certification">
    <div class="col1">보유자격증</div>
    <div class="value">${coach.certification}</div>
  </section>
  <section class="introduce">
    <div class="col1">강사소개</div>
    <div class="value">${coach.introduce}</div>
  </section>
  <section class="button1">
	  <button onclick="location.href='form'" class="btn" >내 프로필 수정</button>
	 </section>
  </div>
  
  </div>

</div>
