 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="innerCont">
<div class="bar">
<p style="font-weight:bold">&nbsp&nbsp${program.name}</p><hr>
프로그램 소개<br>
${program.introduce}<br>
수강금액 ${program.fee} 원<br>
코칭장소 ${program.coachingType}
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
<button id="apply_Btn">신청하기</button>
<input id="programNo" name='programNo' type='hidden' value='${program.no}'><br>
</form>
</div>
 <c:if test="${program.coach.address ne null}">
 <p class="centerName" style="margin-top: 20px; margin-bottom:5px;">&nbsp&nbsp&nbsp오프라인 센터</p>
 <hr style="margin-top: 5px; margin-bottom: 5px;">
<div class="kakaoMap" id="map" style="width:300px;height:300px;"></div>
   </c:if>
</div>



<div class="section">
<ul class="main_content_tab">
<li class="content_tab tab1 active"><a herf="javascipt:;">프로그램 정보</a></a></li>
<li class="content_tab tab2"><a herf="javascipt:;">수강 후기</a></li>
</ul>
<div class="tabCont article">
<img src='${pageContext.servletContext.contextPath}/upload/img/program.png' >
</div>
<div class="tabCont article2">
<c:set var="starRate" value="${star.mcp.starRate}" />
<c:if test="${starRate eq null}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_0.png' style="height:70px;"><span class="starPoint">0.0</span>
</c:if>
<c:if test="${starRate eq '1'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_1.png' style="height:70px;"><span class="starPoint">1.0</span>
</c:if>
<c:if test="${starRate eq '2'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_2.png' style="height:70px;"><span class="starPoint">2.0</span>
</c:if>
<c:if test="${starRate eq '3'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_3.png' style="height:70px;"><span class="starPoint">3.0</span>
</c:if>
<c:if test="${starRate eq '4'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_4.png' style="height:70px;"><span class="starPoint">4.0</span>
</c:if>
<c:if test="${starRate eq '5'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_5.png' style="height:70px;"><span class="starPoint">5.0</span>
</c:if>



<hr style="margin-top: 0px;">
<div id="reviewBox" class="reviewBox">
<input id='startNo' type='hidden' value='3'>
<c:forEach items="${list}" var="list">
<c:if test="${list.review ne null}">
<c:set var="starRate" value="${star.mcp.starRate}" />
<c:if test="${starRate eq null}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_0.png' style="height:20px;">
</c:if>
<c:if test="${starRate eq '1'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_1.png' style="height:20px;">
</c:if>
<c:if test="${starRate eq '2'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_2.png' style="height:20px;">
</c:if>
<c:if test="${starRate eq '3'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_3.png' style="height:20px;">
</c:if>
<c:if test="${starRate eq '4'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_4.png' style="height:20px;">
</c:if>
<c:if test="${starRate eq '5'}">
<img src='${pageContext.servletContext.contextPath}/upload/img/star_5.png' style="height:20px;">
</c:if><br>
<p>${list.review}</p><p>${list.reviewDate}</p><p>${list.member.id}***</p>
</c:if>
  </c:forEach>
</div>

<div id="addReview">더보기</div>
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
    
    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
  </script>
