 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="innerCont">
<div class="leftArea">
<div class="inner">
<form action='searchKeyword' method='get' class="searchInp">
<input name='keyword' type='text' placeholder="코치 또는 프로그램 검색">
<button>검색</button>
</form>
<div class="box">
<strong>키워드</strong>
<form name='keyword' action='searchTag' method='post' class="tag" >
<label class="check" id='chk1'>
<input id='ckh_1' type="checkbox" name="tags" value="1" ><span class="txt">하체튼튼</span></label>
<label class="check" id='chk2'>
<input id='ckh_2' type="checkbox" name="tags" value="2" ><span class="txt">상체튼튼</span></label>
<label class="check" id='chk3'>
<input id='ckh_3' type="checkbox" name="tags" value="3" ><span class="txt">근육위주</span></label>
<label class="check" id='chk4'>
<input id='ckh_4' type="checkbox" name="tags" value="4" ><span class="txt">대회위주</span></label>
<label class="check" id='chk5'>
<input id='ckh_5' type="checkbox" name="tags" value="5" ><span class="txt">체력위주</span></label>
<label class="check" id='chk6'>
<input id='ckh_6' type="checkbox" name="tags" value="6" ><span class="txt">체중감량</span></label>
<label class="check" id='chk7'>
<input id='ckh_7' type="checkbox" name="tags" value="7"><span class="txt">재활위주</span></label>
<label class="check" id='chk8'>
<input id='ckh_8' type="checkbox" name="tags" value="8" ><span class="txt">생활개선</span></label>
<input id="keywordBtn" type='button' value='검색' onclick='chk_keyword()'>
</form>
</div>
<div class="box">
<strong>상세조건</strong>
<p class="tit">코치성별</p>
<form action='searchDetail' method='get'>
<input name='gender' type='radio' value='2' checked>무관
<input name='gender' type='radio' value='0'>여자
<input name='gender' type='radio' value='1'>남자
<p class="tit">코치장소</p>
<input name='coachingType' type='radio' value='온라인' checked>온라인<br>
<input name='coachingType' type='radio' value='오프라인'>오프라인<br>
<input name='coachingType' type='radio' value='오프라인+온라인'>오프라인 + 온라인<br>
<button class="detailBtn">상세조건 검색</button>
</form>
</div>
</div>
</div>

<div class="rightArea">
<form action="selectOption" >
<select name="option" onchange="this.form.submit()">
  <option value="none">=== 선택 ===</option>
  <option value="review">후기 많은 순</option>
  <option value="star">별점 높은 순</option>
</select>
</form>


<c:forEach items="${searchProgram}" var="list">
<div class="cochingList" style='border:1px solid gray; padding:10px; margin:5px'>
<label>${list.no}</label>
<div class="cont">
<div class="img">
<img src='${pageContext.servletContext.contextPath}/upload/coach/${list.coach.photo}'>
</div>
<div class="txt">
<a href='detail?programNo=${list.no}&no=${list.coachNo}'><label>${list.coach.name} 코치님</label></a><br> 
<label>${list.name}</label><br> 
<label>${list.introduce}</label><br> 
<label>${list.fee}원 </label><br> 
</div>
</div>
</div>
</c:forEach>

<div class="paginationWrap">
<ul class="btn-group pagination">
    <c:if test="${pageMaker.prev}">
    <li>
        <a href='list?page=${pageMaker.startPage-1}'><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
    <li>
        <a href='list?page=${pageNum}'><i class="fa">${pageNum}</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage>0}">
    <li>
        <a href='list?page=${pageMaker.endPage+1}'><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>
</div>
</div>
</div>
