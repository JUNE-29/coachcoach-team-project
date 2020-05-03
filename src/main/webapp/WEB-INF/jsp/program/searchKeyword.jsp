 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<div>
<form action='searchKeyword' method='get'>
<input name='keyword' type='text' placeholder="코치 또는 프로그램 검색">
<button>검색</button>
</form>
키워드<br>
<form action='searchTag' method='post'>
<button type="submit" name="tag" value="1">하체튼튼</button>
<button type="submit" name="tag" value="2">상체튼튼</button>
<button type="submit" name="tag" value="3">근육위주</button>
<button type="submit" name="tag" value="4">대회위주</button><br>
<button type="submit" name="tag" value="5">체력위주</button>
<button type="submit" name="tag" value="6">체중감량</button>
<button type="submit" name="tag" value="7">재활위주</button>
<button type="submit" name="tag" value="8">생활개선</button>
</form>
<br>코치성별<br>
<form action='searchDetail' method='get'>
<input name='gender' type='radio' value='2' checked>무관
<input name='gender' type='radio' value='0'>여자
<input name='gender' type='radio' value='1'>남자
<br>코칭장소<br>
<input name='coachingType' type='radio' value='온라인' checked>온라인<br>
<input name='coachingType' type='radio' value='오프라인'>오프라인<br>
<input name='coachingType' type='radio' value='오프라인+온라인'>오프라인 + 온라인<br>
<button>상세조건 검색</button>
</form>
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
