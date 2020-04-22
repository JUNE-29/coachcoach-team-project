<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>회원관리</h1>
  <a href='../notice/list'>공지사항관리</a>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>시작일</th>
    <th>성명</th>
    <th>프로그램명</th>
    <th>특이사항</th>
    <th>회원페이지</th>
  </tr>
  
  <tr>
  <td>1</td>
  <td>2020-04-22</td>
  <td><a href='detail'>홍길동</a></td>
  <td>4주완성 체력기르기!</td>
  <td>있음</td>
  <td><a href='../../myPage/dashBoard/list'>회원페이지가기</a></td>
  </tr>
  </table>
<hr>

<jsp:include page="../../footer.jsp"/>
    