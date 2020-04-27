<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>고객센터 </h1>
  <a href='addForm'>공지사항등록 </a> <br>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>작성자</th>
    <th>제목</th>
    <th>공지보낸날짜</th>
  </tr>
  
  <tr>
  <td>1</td>
  <td>작성자</td>
  <td><a href='detail'> 코로나19로 휴가입니다.</a></td>
  <td>2020-04-22</td>
  </tr>
  </table>
<hr>

<jsp:include page="../../footer.jsp"/>
    