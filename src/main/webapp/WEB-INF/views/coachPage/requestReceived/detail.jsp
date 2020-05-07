<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <h1>회원정보</h1>
  <img src='${pageContext.servletContext.contextPath}/upload/member/${detail.member.photo}' height='300'>
  <br>
  이름: ${detail.member.name} <br>
  아이디: ${detail.member.id} <br>
  전화번호: ${detail.member.tel} <br>
  이메일: ${detail.member.email} <br>
  나이: ${detail.member.birth} <br>
  프로그램명: ${detail.programName} <br>
  요청날짜: ${detail.requestDate} <br>
  시작가능날짜: ${detail.startDate} <br>
  특이사항: ${detail.remark} <br>
  
  <br>
  <c:if test='${detail.status eq "요청대기중"}'>
  <div class="row" >
	  <div class="col-md-2">
		  <form action="accept" method="post">
			  <input name="memberCoachingProgramNo" type="hidden" value="${detail.no}">
			  <button>수락</button>
		  </form>
    </div>
  
	  <div class="col-md-2">
		  <form action="rejectForm" method="post">
			  <input name="memberCoachingProgramNo" type="hidden" value="${detail.no}">
			  <button>거절</button>
      </form>
	  </div>  
  </div>
  </c:if>
  

<hr>

    