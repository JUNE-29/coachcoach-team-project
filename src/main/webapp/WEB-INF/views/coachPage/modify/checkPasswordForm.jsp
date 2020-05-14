<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>비밀번호 재확인</h3>
<p>안전한 코치코치 사용을 위해 비밀번호를 다시 한번 입력해주세요.</p>
<c:if test= '${message ne null}'>
  <h4>${message}</h4><br>
</c:if>

<form action='checkPassword' method='post'>
  <div>
	  비밀번호 <input name='password' type='password'>
    <button class="orange-button">확인</button>
	</div>
</form>
<br>


    