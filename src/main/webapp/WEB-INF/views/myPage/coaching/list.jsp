<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
    <c:if test="${notice ne null}">
			<c:forEach items="${notice}" var="item">
	<div onclick="location.href='noticeDetail?no=${item.no}'">
					<h5>${item.createdDate} 코치 공지사항</h5>
					<h5>${item.title}</h5>
	</div>
			</c:forEach>
    </c:if>
</div>
<hr>	

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


