<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

  <h1>받은요청</h1>
  <a href='form'>수락</a>
  <a href='form'>거절</a><br>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>요청날짜</th>
    <th>성명</th>
    <th>프로그램명</th>
    <th>특이사항</th>
    <th>상태</th>
  </tr>
  <%int no = 0;%>
  <c:forEach items="${list}" var="item">
		<%no++;%>
		<td>
		  <%=no%>
		</td>
		<td>
		  ${item.requestDate}
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
      ${item.status}
    </td>
  </c:forEach>

  </table>
<hr>

<jsp:include page="../../footer.jsp"/>
    