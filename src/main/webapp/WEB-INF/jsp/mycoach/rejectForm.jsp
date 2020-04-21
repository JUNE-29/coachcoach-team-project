 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>


<h3>거절사유</h3>
○○ 코치님이 보낸 메세지입니다.<br>
<form action='add' method='post'>
<br>
<textarea name='title' rows='5' cols='60' value='블라블라'></textarea><br>
<button>확인</button>
</form>

<jsp:include page="../footer.jsp"/>
