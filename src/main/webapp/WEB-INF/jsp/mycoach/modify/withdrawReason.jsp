<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<c:if test="${not empty member}">
<h1>회원 탈퇴</h1>
<h5>남겨주신 정보를 바탕으로 보다 나은 서비스를 제공해 드리기 위해 더욱 노력하겠습니다.</h3>
<form action='withdraw' method='post' enctype='multipart/form-data'>
<!-- 
<input name='withdrawalReason' type='checkbox' value='1'> 상품 구성 또는 서비스 불만<br>
<input name='withdrawalReason' type='checkbox' value='2'> 유사 서비스로의 이전 <br>
<input name='withdrawalReason' type='checkbox' value='3'> 시스템 장애<br>
<input name='withdrawalReason' type='checkbox' value='4'> 서비스 이용 불필요<br>
 -->
<label>탈퇴이유</label><input name='withdrawalReason' type='text'><br>
<button>탈퇴하기</button>
</form>
</c:if>

<c:if test="${empty member}">
<h1>COACH COACH</h1>
<p>아이디 비밀번호가 일치하지 않습니다.</p>
<form action='withdrawForm' method='get'>
<button>확인</button>
</form>
</c:if>

<jsp:include page="../footer.jsp"/>
    