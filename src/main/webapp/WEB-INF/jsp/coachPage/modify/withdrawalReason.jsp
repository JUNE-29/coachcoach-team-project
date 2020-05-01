<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>

<h1>회원 탈퇴</h1>
<h5>남겨주신 정보를 바탕으로 보다 나은 서비스를 제공해 드리기 위해 더욱 노력하겠습니다.</h5>
<form action='withdraw' method='post'>
<textarea name=withdrawalReason placeholder="탈퇴 이유"></textarea>
<p><button>탈퇴하기</button>
</form>
<br>

<jsp:include page="../../footer.jsp"/>
    