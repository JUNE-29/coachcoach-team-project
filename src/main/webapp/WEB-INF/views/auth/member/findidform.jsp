<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../../header.jsp"/>

<h1>회원 아이디찾기</h1>
<form action='findid' method='post'>
<h3> 회원정보에 등록한 휴대전화로 인증</h3>
이름: <input name='name' type='text'><br>
연락처: <input name='tel' type='tel'><button>인증번호 받기</button><br>
인증번호: <input name='number' type='text'><br>
<button>확인</button>
</form>

<jsp:include page="../../footer.jsp"/>