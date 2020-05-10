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
<form action='payments' name='frm' method='get'>
<input name='payment' type='radio' value='kakaoPay'>카카오페이
<input name='payment' type='radio' value='creditCard'>신용카드<br>
<input type='button' value='결제하기' onclick='payChk()'>
</form>

<script>
"use strict"


function payChk() {
	//console.log('ddd');
	var chk_pay = document.getElementsByName('payment');
	var chk_cnt = 0; 
	for(var i=0; i<chk_pay.length; i++) {
	    if(chk_pay[i].checked == true) {
	    	chk_cnt++
	    } 
	}

	if (chk_cnt == 0){
		alert("결제수단을 선택해주세요");
		return;
	} 

	document.frm.submit();
}

</script>
<jsp:include page="../footer.jsp"/>
