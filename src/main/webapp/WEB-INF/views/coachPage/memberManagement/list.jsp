<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <h1><span class="highlight">회원관리</span></h1>
  <br>
  회원 수: 총 ${fn:length(list)}명 <br>

	 <div class="table-responsive" style="padding-right:60px;">
	 <table class="table table-hover coach-table">
	 <thead class="table-head">
	 <tr>
	   <th scope="col">번호</th>
	   <th scope="col">시작일</th>
	   <th scope="col">성명</th>
	   <th scope="col">프로그램명</th>
	   <th scope="col">특이사항</th>
	   <th scope="col">회원페이지</th>
   </tr>
	 </thead>

	<c:set var="i" value="0"/>
	<tbody>
	  <c:if test="${empty list}"> 
	   <tr>
	    <td colspan="6">아직 등록된 회원이 없어요!</td>
	   </tr>
	  </c:if>
  <c:forEach items="${list}" var="item">
    <c:set var="i" value="${i+1}"/>
    <tr>
		   <td scope="row">
        ${i}
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
		    <form action='../../myPage/coaching/list'>
		      <input type='hidden' name='memberCoachingProgramNo' value='${item.no}'>
		      <button>회원페이지가기</button>
		    </form>
		   </td>
		 </tr>
	 </c:forEach>
  </tbody>
</table>
</div>
