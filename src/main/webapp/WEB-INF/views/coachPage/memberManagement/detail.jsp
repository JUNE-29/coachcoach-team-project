<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <h1>회원정보</h1>
  <img src='${pageContext.servletContext.contextPath}/upload/member/${detail.member.photo}' height='300'>
  <br>
  이름: ${detail.member.name} <br>
  아이디: ${detail.member.id} <br>
  전화번호: ${detail.member.tel} <br>
  이메일: ${detail.member.email} <br>
  생년월일: ${detail.member.birth} <br>
  프로그램명: ${detail.programName} <br>
  시작날짜: ${detail.startDate} <br>
  종료날짜: ${detail.endDate} <br>
  특이사항: ${detail.remark} <br>
  
  <br>
  
<hr>

    