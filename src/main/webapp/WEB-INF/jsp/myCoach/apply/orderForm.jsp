 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

  <h1>결제정보</h1>
<div style='border:1px solid gray; padding:10px; margin:5px'>
  <h3>결제할 프로그램</h3>
      신청번호  ${item.mcp.no}<br>
      코치이름 ${item.coach.name}<br>
      결제할 프로그램명 ${item.name}<br>
      결제금액 ${item.fee}원<br>
</div>
<div style='border:1px solid gray; padding:10px; margin:5px'>
  <h3>회원정보</h3>
      회원이름 ${member.name}<br>
      생년월일${member.birth}<br>
      전화번호 ${member.tel}<br>
      이메일 ${member.email}<br>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<jsp:include page="../footer.jsp"/>
