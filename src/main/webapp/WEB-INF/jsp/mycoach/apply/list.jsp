 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>
  <h1>신청내역</h1>
  <table border='1'>
  <tr>
    <th>주문번호</th>
    <th>코치님</th>
    <th>신청일</th>
    <th>신청한 프로그램명</th>
    <th>결제금액</th>
    <th>상태</th>
  </tr>
  

    <tr>
    <td>1</td> 
    <td>2</td> 
    <td>3</td> 
    <td>4</td>
    <td>5</td>
    <td><form action='rejectForm' method='get'>
    <button>거절사유</button>
    </form></td>
    </tr>



<jsp:include page="../footer.jsp"/>
