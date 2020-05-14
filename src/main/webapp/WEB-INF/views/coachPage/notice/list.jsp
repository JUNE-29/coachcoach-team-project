<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <h1><span class="highlight">공지사항 관리</span></h1>
  
  <br>
		<div class="table-responsive" style="padding-right:60px;">
		 <table class='table table-hover'>
		 <thead class='table-head'>	
		  <tr>
		    <th scope="col">번호</th>
		    <th scope="col">프로그램명</th>
		    <th scope="col">받는회원</th>
		    <th scope="col">제목</th>
		    <th scope="col">공지날짜</th>
		  </tr>
		  </thead>

		  <tbody>
		  <c:if test="${empty list}"> 
		   <tr>
		    <td colspan="5">아직 등록한 공지사항이 없어요!</td>
		   </tr>
		  </c:if>

		  <c:set var="i" value="${fn:length(list)}"/>

		  <c:forEach items="${list}" var="item">
		  <tr>
		    <td>
		      ${i}
		    </td>
        <c:set var="i" value="${i-1}"/>
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
		  </tbody>
		 </table>
	  <div class="addForm">
	  <button type="button" class="btn orange-button" data-toggle="modal" data-target="#addNoticeBoard">공지사항 등록</button>
	  </div>
  </div>
  <br>

  <a href='../memberManagement/list'>회원관리돌아가기</a>

    