<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>공지사항 관리</h1>
  <a href='addForm'>공지사항 글쓰기</a> <br>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>받는회원</th>
    <th>제목</th>
    <th>공지보낸날짜</th>
  </tr>
  
  <tr>
  <td>1</td>
  <td>홍길동, 유관순</td>
  <td><a href='detail'> [엄진영코치] 이틀 휴가입니다.</a></td>
  <td>2020-04-22</td>
  </tr>
  </table>
<hr>
  <a href='../memberManagement/list'>회원관리돌아가기</a>

<jsp:include page="../../footer.jsp"/>
    