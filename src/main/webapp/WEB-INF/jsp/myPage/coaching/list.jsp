<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp"/>
<div>
<h3>3월 8일 코치 공지 업데이트!</h3>
룰루랄라 코치 쉬어요
</div>
<button type="button" onclick="location.href='addForm'">등록</button><br>

	  	 <div class="row">
	<c:forEach items="${list}" var="item">

	 	<div class="col-md-2">
      <form action="detail" Method="post">
      <input type="hidden" name="no" value="${item.no}">
		  <button>☆</button>
      </form>
	  </div>

	</c:forEach>
	     </div>


<jsp:include page="../../footer.jsp"/>