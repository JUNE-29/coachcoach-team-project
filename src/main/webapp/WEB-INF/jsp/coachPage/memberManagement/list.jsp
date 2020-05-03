<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="../../header.jsp"/>

  <h1>회원관리</h1>
  <a href='../notice/list'>공지사항관리</a>
  
  <div style='padding:20px; margin:20px auto;'>
  회원 수: 총 ${fn:length(list)}명 <br>
  <div style='text-align: center;'>
  <table border='1px'>
  <tr>
    <th>번호</th>
    <th>시작일</th>
    <th>성명</th>
    <th>프로그램명</th>
    <th>특이사항</th>
    <th>회원페이지</th>
  </tr>
  <%int no = 0;%>
  
  <c:forEach items="${list}" var="item">
    <%no++;%>
  <tr>
    <td>
      <%=no%>
    </td>
    <td>
      ${item.startDate}
    </td>
    <td>
      ${item.member.name}
    </td>
    <td>
      ${item.programName}
    </td>
    <td>
    <a href='detail?no=${item.no}'>
      <c:choose>
        <c:when test="${item.remark ne null}">있음</c:when>
        <c:when test="${item.remark eq null}">없음</c:when>
      </c:choose>
    </a>
    </td>
    <td>
      <a href='../../myPage/dietDiary/list?no=${item.member.no}'>회원페이지가기</a>
    </td>
    </tr>
  </c:forEach>
  </table>
  </div>
  </div>
<hr>

<jsp:include page="../../footer.jsp"/>
    