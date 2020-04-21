applyList.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<h1>후기작성</h1>
<textarea name='title' rows='5' cols='60' value="후기를 등록해주세요!"></textarea><br>
사진 첨부하기<input name='photoFiles' type='file'><br>
<button type="button" onclick="">확인</button>


<jsp:include page="../footer.jsp"/>
