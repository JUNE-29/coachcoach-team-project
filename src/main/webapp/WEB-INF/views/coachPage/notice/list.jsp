<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <h1>공지사항 관리</h1>
  <a href='addForm'>공지사항 글쓰기</a> <br>
  
  <div style='padding:20px; margin:20px auto;'>
  총 ${fn:length(list)}개 요청 건<br>
  <div style='text-align: center;'>
  <table border='1px'>
  <tr>
    <th>번호</th>
    <th>프로그램명</th>
    <th>받는회원</th>
    <th>제목</th>
    <th>공지날짜</th>
  </tr>
  <%int no = 0;%>
  
  <c:forEach items="${list}" var="item">
    <%no++;%>
  <tr>
    <td>
      <%=no%>
    </td>
    <td>
      ${item.programName}
    </td>
    <td>
      <c:forEach items="${item.members}" var="member">${member.name}님 </c:forEach>
    </td>
    <td>
    <a href='detail?no=${item.no}'>${item.title}</a>
    </td>
    <td>
      ${item.createdDate}
    </td>
    </tr>
  </c:forEach>
  </table>
  </div>
  </div>
<hr>
<a href='../memberManagement/list'>회원관리돌아가기</a>

    