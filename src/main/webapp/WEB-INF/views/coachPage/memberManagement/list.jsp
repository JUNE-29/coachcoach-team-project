<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <div class="title_list">
  <h2>회원관리</h2>
  </div>
  <br>
  회원 수: 총 ${fn:length(list)}명 <br>

	 <div class="table-responsive" style="padding-right:60px;">
	 <table class="table table-hover coach-table member-table">
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
	    <th colspan="6">아직 등록된 회원이 없어요!</th>
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
			   <a href='#' data-toggle="modal" data-target="#memberDetail">
		      <input type='hidden' name='memberCoachingProgramNo' value='${item.no}'>
			     <c:choose>
			       <c:when test="${item.remark ne null}">있음</c:when>
			       <c:when test="${item.remark eq null}">없음</c:when>
			     </c:choose>
			   </a>
		   </td>
		   <td>
		    <form action='../../myPage/coaching/list'>
		    <input type='hidden' name='memberCoachingProgramNo' value='${item.no}'>
		      <button class="btn orange-button-detail">회원페이지가기</button>
		    </form>
		   </td>
		 </tr>
	 </c:forEach>
  </tbody>
</table>
</div>

<!-- Modal -->
<div class="modal fade" id="memberDetail" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">회원 정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class='row'>
            <div class='col-md-4' style='text-align:center;'>
              <img src='${pageContext.servletContext.contextPath}/upload/member/' style='width:180px'>
            </div>
            <div class='col-md-8'>
              <table style='width:500px' class='table table-borderless'>
                <tr><th>이름</th><td class='name'></td></tr>
                <tr><th>아이디</th><td class='id'></td></tr>
                <tr><th>전화번호</th><td class='tel'></td></tr>
                <tr><th>이메일</th><td class='email'></td></tr>
                <tr><th>생년월일</th><td class='birth'></td></tr>
                <tr><th>프로그램명</th><td class='programName'></td></tr>
                <tr><th>요청날짜</th><td class='requestDate'></td></tr>
                <tr><th>시작날짜</th><td class='startDate'></td></tr>
                <tr><th>특이사항</th><td class='remark'></td></tr>
              </table>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn orange-button-detail" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
