<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>프로그램관리</h1>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>수업가능지역</th>
    <th>회원수</th>
    <th>자세히보기</th>
    <th><button>수정</button></th>
    <th><button>삭제</button></th>
  </tr>

  </table>
  <a href='form'>새 프로그램 등록하기</a><br>
<hr>

<jsp:include page="../../footer.jsp"/>