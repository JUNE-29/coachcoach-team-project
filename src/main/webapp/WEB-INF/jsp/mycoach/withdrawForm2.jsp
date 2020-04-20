<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>회원 탈퇴</h1>
<h5>남겨주신 정보를 바탕으로 보다 나은 서비스를 제공해 드리기 위해 더욱 노력하겠습니다.</h3>
<form action='withdraw' method='post' enctype='multipart/form-data'>
<input name='name' type='checkbox' value='${member.name}'> 상품 구성 또는 서비스 불만<br>
<input name='name' type='checkbox' value='${member.name}'> 유사 서비스로의 이전 <br>
<input name='name' type='checkbox' value='${member.name}'> 시스템 장애<br>
<input name='name' type='checkbox' value='${member.name}'> 서비스 이용 불필요<br>
<input name='name' type='checkbox' value='${member.name}'> 기타 <input name='name' type='text'><br>
<p><button>탈퇴하기</button>
</form>
<br>

<jsp:include page="../footer.jsp"/>
    