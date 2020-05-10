<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="detailProfile">
  <h1>프로필</h1>
<div class="content">
  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' class="img-thumbnail"><br>

  <section class="name row">
    <div class="col-md-2">이름</div>
    <div class="col-md-4">${coach.name}</div>
  </section>
  <section class="area row">
    <div class="col-md-2">수업가능지역</div>
    <div class="col-md-4">${coach.area}</div>
  </section>
  <section class="career row">
    <div class="col-md-2">경력사항</div>
    <div class="col-md-4">${coach.career}</div>
  </section>
  <section class="certification row">
    <div class="col-md-2">보유자격증</div>
    <div class="col-md-4">${coach.certification}</div>
  </section>
  <section class="introduce row">
    <div class="col-md-2">강사소개</div>
    <div class="col-md-4">${coach.introduce}</div>
  </section>

  <button onclick="location.href='form'" class="btn btn-primary col-md-4" style="margin : 10px;">내 프로필 수정</button>
</div>
</div>
