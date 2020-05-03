 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>


<p>로그인이 필요합니다</p>
<form action='../auth/login' method='get'>
<button>로그인하기</button>
</form>

<jsp:include page="../footer.jsp"/>
