<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<jsp:include page="../../header.jsp"/>

<h1>회원 가입</h1>
<form action='add' method='post' enctype='multipart/form-data'>
아이디:<input name='id' type='text'><br>
비밀번호: <input name='password' type='password'><br>
이름:     <input name='name' type='text'><br>
성별:     <input type="radio" name="member" value="1"/>여자
          <input type="radio" name="member" value="2"/>남자<br>
생년월일: <input name= 'birth' type='text'><br>
연락처:   <input name='tel' type='tel'><button> 인증하기</button><br>
이메일:   <input name='email' type='email'><br>
사진:     <input name='photoFile' type='file'><br>
<button>가입하기</button>
</form>

<jsp:include page="../../footer.jsp"/>
    