<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${not empty member}">
<p class="title">회원 탈퇴</p>
<hr style="margin-top: 5px;">
남겨주신 정보를 바탕으로 보다 나은 서비스를 제공해 드리기 위해 더욱 노력하겠습니다.
<form action='withdraw' >
<input id="no" name='no' type='hidden' value='${member.no}'><br>
<input class="withdrawalReason"  name='withdrawalReason' type='radio' value='상품 구성 또는 서비스 불만'> 상품 구성 또는 서비스 불만<br>
<input class="withdrawalReason"  name='withdrawalReason' type='radio' value='유사 서비스로의 이전'> 유사 서비스로의 이전 <br>
<input class="withdrawalReason"  name='withdrawalReason' type='radio' value='시스템 장애'> 시스템 장애<br>
<input class="withdrawalReason"  name='withdrawalReason' type='radio' value='서비스 이용 불필요'> 서비스 이용 불필요<br>
 <div class="form-group "  style="margin-top: 5px;">
    <label  >탈퇴이유</label>
    <input  name='withdrawalReason2'  type="text" id="withdrawalReason2"  class="form-control mx-sm-3" style="width:300px; display:inline">
  </div>
<input class="leftbtn"  type="button"  id="withdraw_btn" value="탈퇴">
</form>
</c:if>



    