<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../../header.jsp"/>

<h1>회원 비밀번호 찾기</h1>
<form action='findpassword' method='post'>
<h3>회원정보에 등록한 휴대전화로 인증</h3>
이름: <input name='name' type='text'><br>
연락처: <input name='tel' type='tel'><button>인증번호 받기</button><br>
인증번호: <input name='number' type='text'><br>
<button>확인</button>

<h3>임시 비밀번호 받기</h3>
아이디: <input name='id' type='text'><br>
이름: <input name='name' type='text'><br>
이메일: <input name='email' type='email'><br>
<button>확인</button>
</form>

<jsp:include page="../../footer.jsp"/>