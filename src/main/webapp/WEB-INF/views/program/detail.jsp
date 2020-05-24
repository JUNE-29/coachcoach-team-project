 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="innerCont">
<div class="bar">
<h3>프로그램</h3>
<hr>
프로그램명: ${program.name}<br>
프로그램: ${program.introduce}<br>
수강금액: ${program.fee}<br>
<div class="star_rating">
<c:set var="starRate" value="${star.mcp.starRate}" />
<c:if test="${starRate eq null}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_0.png' style="height:35px;"> 0
</c:if>
<c:if test="${starRate eq '1'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_1.png' style="height:35px;"> 1
</c:if>
<c:if test="${starRate eq '2'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_2.png' style="height:35px;"> 2
</c:if>
<c:if test="${starRate eq '3'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_3.png' style="height:35px;"> 3
</c:if>
<c:if test="${starRate eq '4'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_4.png' style="height:35px;"> 4
</c:if>
<c:if test="${starRate eq '5'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_5.png' style="height:35px;"> 5
</c:if>
</div>
</div>


<div class="rightBar">
<div class="inner">
<form action='apply/form' method='post'>
<div class="coachInfo" >
<div class="profile"><img src='${pageContext.servletContext.contextPath}/upload/coach/${program.coach.photo}'></div>
<strong>${program.coach.name} 코치님</strong>
</div>
<hr>
<dl>
  <dt>수업가능지역</dt>
  <dd>${program.coach.area}</dd>
  <dt>경력</dt>
  <dd>${program.coach.career}</dd>
  <dt>자격증</dt>
  <dd>${program.coach.certification}</dd>
  <dt>소개</dt>
  <dd>${program.coach.introduce}</dd>
  <dt>유형</dt>
  <dd>${program.coach.workType}</dd>
</dl>
<button>신청하기</button>
<input name='programNo' type='hidden' value='${program.no}'><br>
</form>
</div>
 <c:if test="${program.coach.address ne null}">
<div class="kakaoMap" id="map" style="width:300px;height:300px;"></div>
   </c:if>
</div>



<div class="section">
<ul class="main_content_tab">
<li class="content_tab tab1 active"><a herf="javascipt:;">프로그램 정보</a></a></li>
<li class="content_tab tab2"><a herf="javascipt:;">수강 후기</a></li>
</ul>
<div class="tabCont article">
</div>
<div class="tabCont article2">
<c:set var="starRate" value="${star.mcp.starRate}" />
<c:if test="${starRate eq null}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_0.png' style="height:80px;">
</c:if>
<c:if test="${starRate eq '1'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_1.png' style="height:80px;">
</c:if>
<c:if test="${starRate eq '2'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_2.png' style="height:80px;">
</c:if>
<c:if test="${starRate eq '3'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_3.png' style="height:80px;">
</c:if>
<c:if test="${starRate eq '4'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_4.png' style="height:80px;">
</c:if>
<c:if test="${starRate eq '5'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_5.png' style="height:80px;">
</c:if>
  <table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">후기</th>
      <th scope="col"></th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${memberProgram}" var="memberProgram">
<c:if test="${memberProgram.review ne null}">
    <tr>
      <td>${memberProgram.review}</td>
      <td></td>
      <td>${memberProgram.reviewDate}</td>
    </tr>
</c:if>
  </c:forEach>
  </tbody>
</table>

</div>
</div>
</div>
   
   
   
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c96ebf50a416c2681271c445cee88efd"></script>
  <script>
  var latitude = "<c:out value='${program.coach.latitude}'/>"
  var longitude = "<c:out value='${program.coach.longitude}'/>"
  
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(latitude, longitude),
      level: 3
    };

    var map = new kakao.maps.Map(container, options);
    
    $(function() {
    	var tabList = $('.main_content_tab li'),
    	    tabCont = $('.section .tabCont');
    	
    	tabList.on("click", function() {
    		tabList.removeClass('active');
        tabCont.hide();
        
    		if ( $(this).hasClass('tab1')) {
    			$(this).addClass('active');
    			$('.article').show();
    		} else {
          $(this).addClass('active');
          $('.article2').show();
    		}
    	});
    });
  </script>
