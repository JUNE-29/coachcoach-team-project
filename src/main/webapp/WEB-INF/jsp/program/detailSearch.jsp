 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<div>
<form action='search' method='get'>
<input name='keyword' type='text' placeholder="코치 또는 프로그램 검색">
<button>검색</button>
</form>
키워드<br>
<form action='search2' method='post'>
<input class="btn btn-outline-success" type="button" value="상체튼튼">
<input class="btn btn-outline-success" type="button" value="하체튼튼">
<input class="btn btn-outline-success" type="button" value="근육위주">
<input class="btn btn-outline-success" type="button" value="대회위주"><br>
<input class="btn btn-outline-success" type="button" value="체력위주">
<input class="btn btn-outline-success" type="button" value="체중감량">
<input class="btn btn-outline-success" type="button" value="재활위주">
<input class="btn btn-outline-success" type="button" value="생활개선">
</form>
상세조건<br>
<input name='name' type='checkbox' value='${member.name}'>무관
<input name='name' type='checkbox' value='${member.name}'>여자
<input name='name' type='checkbox' value='${member.name}'>남자
<br>코치유형<br>
<input name='name' type='checkbox' value='${member.name}'>오프라인 + 온라인<br>
<input name='name' type='checkbox' value='${member.name}'>오프라인<br>
<input name='name' type='checkbox' value='${member.name}'>온라인<br>
</div>


<div class="dropdown">
<select name="후기 많은 순">
  <option value="volvo">후기 많은 순</option>
  <option value="saab">별점 높은 순</option>
  <option value="fiat">인기 많은 순</option>
</select>
</div>

<c:forEach items="${searchProgram}" var="list">
<div style='border:1px solid gray; padding:10px; margin:5px'>
<label>${list.no}</label>
<img src='${pageContext.servletContext.contextPath}/upload/coach/${list.coach.photo}' height='200'>
<a href='detail?programNo=${list.no}&no=${list.coachNo}'><label>${list.coach.name} 코치님</label></a><br> 
<label>${list.name}</label><br> 
<label>${list.introduce}</label><br> 
<label>${list.fee}원 </label><br> 
</div>
</c:forEach>





<jsp:include page="../footer.jsp"/>
