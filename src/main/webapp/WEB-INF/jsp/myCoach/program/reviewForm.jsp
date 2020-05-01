applyList.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>후기작성</h1>
<form action='reviewUpdate' method='post' enctype='multipart/form-data'>
<textarea name='review' rows='5' cols='60' value="후기를 등록해주세요!"></textarea><br>
<input name='no' type='hidden' value='${no}'><br>
<button>확인</button>
</form>


<jsp:include page="../footer.jsp"/>
