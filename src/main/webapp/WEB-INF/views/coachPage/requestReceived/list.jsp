<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <h1><span class="highlight">받은 요청</span></h1>
  <br>
  총 ${fn:length(list)}개 요청 건<br>

	<div class="table-responsive" style="padding-right:60px;">
    <table class='table table-hover'>
    <thead class='table-head'> 
      <tr>
        <th scope="col">번호</th>
        <th scope="col">요청날짜</th>
        <th scope="col">회원명</th>
        <th scope="col">프로그램명</th>
        <th scope="col">특이사항</th>
        <th scope="col">상태</th>
      </tr>
      </thead>
    <c:set var="i" value="${fn:length(list)}"/>  
		
		<tbody>
        <c:if test="${empty list}"> 
          <tr>
            <td colspan="6">아직 요청이 들어오지 않았어요.</td>
          </tr>
        </c:if>
    <c:forEach items="${list}" var="item">
			<tr>
				<td>
				  ${i}
				</td>
			  <c:set var="i" value="${i-1}"/>
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
		    </tr>
	    </c:forEach>
    </tbody>
  </table>
  </div>

