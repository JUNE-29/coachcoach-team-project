 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<style>
.innerCont { overflow:hidden;}
.leftArea { float:left; width:354px;}
.leftArea .inner { padding:18px; border-radius:20px; box-sizing:border-box; background:#CFDDF3;}
.leftArea .inner .searchInp { overflow:hidden; position:relative; border-radius:15px; height:65px; background:#fff; }
.leftArea .inner .searchInp input { padding:0 80px 0 18px; width:100%; height:100%; border:none; background:#fff;}
.leftArea .inner .searchInp button { position:absolute; top:50%; right:10px; transform:translateY(-50%); width:65px; height:30px; border:none; border-radius:20px; background:#ddd; }
.leftArea .inner .box { padding:9px 16px; margin-top:20px; border-radius:20px; background:#fff;}
.leftArea .inner .box > strong { display:block; padding-bottom:12px; font-size:20px; font-weight:normal; border-bottom:1px solid #E0E0DF}
.leftArea .inner .box .tag { overflow:hidden; }
.leftArea .inner .box .tag button { float:left; margin:8px 0 0 7px; padding:0 5px; min-width:65px; height:30px; line-height:30px; font-size:14px; border-radius:30px; border:1px solid #A5A5A4; background:#fff;}
.leftArea .inner .box .tag button.active (border-color:#00A0CC;)
.leftArea .inner .box .detailBtn { margin-top:15px; width:100%; height:40px; line-height:40px; border-radius:20px; border:none; background:#ddd;}
.leftArea .inner .box .tit { margin:15px 0; font-size:17px; font-weight:500;}
.rightArea  { float:right; width:760px;}
.rightArea .cochingList {padding:40px; margin-bottom:10px; border:1px solid #A5A5A4;}
.rightArea .cochingList .cont {  position:relative; padding:15px 30px; }
.rightArea .cochingList .cont .img { overflow:hidden; position:absolute; left:20px; top:10px; width:140px; height:140px; border-radius:50%; background:#eee;}
.rightArea .cochingList .cont .img img { width:100%; height:100%;}
.rightArea .cochingList .cont .txt { padding-left:250px;}
.rightArea .paginationWrap { margin-top:20px; text-align:center;}
.rightArea .paginationWrap > ul { overflow:hidden; display:inline-block;}
.rightArea .paginationWrap > ul li { float:left; border:1px solid #ddd; border-radius:5px;}
.rightArea .paginationWrap > ul li + li { margin-left:8px;}
.rightArea .paginationWrap > ul li a { padding:8px; font-size:18px; color:#000;}
</style>

<div class="innerCont">
<div class="leftArea">
<div class="inner">
<form action='searchKeyword' method='get' class="searchInp">
<input name='keyword' type='text' placeholder="코치 또는 프로그램 검색">
<button>검색</button>
</form>
<div class="box">
<strong>키워드</strong>
<form action='searchTag' method='post' class="tag">
<button type="submit" name="tag" value="1">하체튼튼</button>
<button type="submit" name="tag" value="2">상체튼튼</button>
<button type="submit" name="tag" value="3">근육위주</button>
<button type="submit" name="tag" value="4">대회위주</button><br>
<button type="submit" name="tag" value="5">체력위주</button>
<button type="submit" name="tag" value="6">체중감량</button>
<button type="submit" name="tag" value="7">재활위주</button>
<button type="submit" name="tag" value="8">생활개선</button>
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


<c:forEach items="${programList}" var="list">
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


<jsp:include page="../footer.jsp"/>
