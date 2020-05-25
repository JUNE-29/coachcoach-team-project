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
<button>신청하기</button>
<input name='programNo' type='hidden' value='${program.no}'><br>
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
코치코치 수강전 주의사항<br>
[프로그램 공통 안내 사항]<br>
• 코치코치 프로그램은 전담코치와 직접 만나지 않고 스마트폰 앱을 통해 코칭을 받는 프로그램입니다.
• 운동영상은 와이파이 환경에서 보시는 것이 가장 좋으며, 데이터를 이용하실 경우 요금이 부과될 수 있습니다.
• 다노앱은 안드로이드 OS 버전 4.4 (Kitkat) 이상 (권장), 2020년 4월 12일부터 아이폰 iOS 버전 10.0 이상의 기기에서만 동작합니다.
• 마이다노 코칭은 실시간보다 '기록에 기반한 맞춤형 코칭'을 제공해드리고 있습니다.
<br>
• 답변 가능한 상담시간은 담당코치의 상황에 따라 유동적으로 변동될 수 있으며, 주말에는 코칭이 이루어지지 않습니다.
• 코치님과의 소통 시간은 평일 기준 [하루 최소 4시간]이 보장됩니다. 단 채팅창은 수강 기간 동안 열려있기 때문에, 언제든 편히 질문을 남겨주실 수 있어요.
• 코치님과의 소통 시간은 개강 1일차에 개별 공지되며, 상황에 따라 일부 조정될 수 있습니다.
[베이직 케어]<br>
• 피드백 발송은 [주 3회] 이루어지며, 28일의 수강 기간 동안 [총 12번의 피드백 횟수]가 보장됩니다.
• 프로그램 특성상 채팅창에 질문을 남길 수 없으며, 개인 상황에 따른 운동 커스터마이징이 불가합니다.
• 코치님의 피드백 발송 일시는 개강 1일차에 개별 공지되며, 상황에 따라 일부 조정될 수 있습니다.

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
<div class="reviewBox">
<c:forEach items="${memberProgram}" var="memberProgram">
<c:if test="${memberProgram.review ne null}">
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
<p>${memberProgram.review}</p><p>${memberProgram.reviewDate}</p><p>${memberProgram.member.id}***</p>
</c:if>
  </c:forEach>
</div>
<hr style="margin-top: 0px;">
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
