<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page='../../header.jsp'/>

    <h3>코치 공지사항</h3>
    <h5>${detail.title}</h5>
    프로그램명: ${detail.programName}<br>
    등록 일시: ${detail.createdDate}
    <hr>
    <div>
    ${detail.content}
    </div>
    <hr>
<jsp:include page='../../footer.jsp'/>