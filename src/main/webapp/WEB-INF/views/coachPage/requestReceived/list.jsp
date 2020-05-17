<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <h1><span class="highlight">받은 요청</span></h1>
  <br>
  총 ${fn:length(list)}개 요청 건<br>

	<div class="table-responsive" style="padding-right:60px;">
    <table class='table table-hover coach-table request-table'>
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
		    <a href='#' data-toggle="modal" data-target="#requestDetail">
		    <input name='no' type='hidden' value='${item.no}'>
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

<!-- Modal -->
<div class="modal fade" id="requestDetail" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">회원 요청 정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class='row'>
	      <div class='col-md-3'>
					<img src='${pageContext.servletContext.contextPath}/upload/member/${detail.member.photo}' style='width:180px'>
				</div>
				<div class='col-md-8'>
					<table>
						<tr><th class='col-md-2'>이름</th><td class='name col-md-4'></td></tr>
						<tr><th class='col-md-2'>아이디</th><td class='id col-md-4'></td></tr>
						<tr><th class='col-md-2'>전화번호</th><td class='tel col-md-4'></td></tr>
						<tr><th class='col-md-2'>이메일</th><td class='email col-md-4'></td></tr>
						<tr><th class='col-md-2'>생년월일</th><td class='birth col-md-4'></td></tr>
						<tr><th class='col-md-2'>프로그램명</th><td class='programName col-md-4'></td></tr>
						<tr><th class='col-md-2'>요청날짜</th><td class='requestDate col-md-4'></td></tr>
						<tr><th class='col-md-2'>시작가능날짜</th><td class='startDate col-md-4'></td></tr>
						<tr><th class='col-md-2'>특이사항</th><td class='remark col-md-4'></td></tr>
					</table>
				</div>
      </div>
				
        
      <input name="memberCoachingProgramNo" type="hidden" value="">
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id='requestReject'>거절</button>
        <button type="button" class="btn orange-button-detail" id='requestAccept'>수락</button>
      </div>
    </div>
  </div>
</div>