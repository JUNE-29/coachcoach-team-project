<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<p class="title">회원정보수정</p>
<hr style="margin-top: 5px;">
<c:if test= '${message ne null}'>
  <h4>${message}</h4><br>
</c:if>

<form class="form-inline " action='checkPassword' method='post'  >
  <div class="form-group">
    <label for="inputPassword6">비밀번호</label>
    <input  name='password'  type="password" id="inputPassword6" class="form-control mx-sm-3" aria-describedby="passwordHelpInline">
    <small id="passwordHelpInline" class="text-muted">
    </small>
  </div>
    <button id="checkpwdbtn">확인</button>
</form>