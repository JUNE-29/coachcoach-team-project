 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="bar">
<div class="rightArea">
<div class="content">
<h3>프로그램</h3>
번호: ${program.no}<br>
프로그램명: ${program.name}<br>
프로그램: ${program.introduce}<br>
수강금액: ${program.fee}<br>
</div>

<form action='apply/form' method='post'>
<h5>${program.coach.name} 코치님</h5>
<img src='${pageContext.servletContext.contextPath}/upload/coach/${program.coach.photo}' height='200'><br>
수업가능지역: ${program.coach.area}<br>
경력: ${program.coach.career}<br>
자격증: ${program.coach.certification}<br>
소개: ${program.coach.introduce}<br>
유형: ${program.coach.workType}<br>
<button>신청하기</button>
<input name='programNo' type='hidden' value='${program.no}'><br>
</form>
</div>

<p>코치 만족도</p>
<p id="star_grade">
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
</p>        

  <h3>수강후기</h3>
  <c:forEach items="${memberProgram}" var="memberProgram">
    <c:if test="${memberProgram.review ne null}">
      ${memberProgram.review}&nbsp${memberProgram.reviewDate}<br>
      </c:if>
  </c:forEach>

</div>

<div id="map" style="width:300px;height:300px;"></div>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c40bc1fe25ee526221b9d40da481ff78"></script>
  <script>
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(33.450701, 126.570667),
      level: 3
    };

    var map = new kakao.maps.Map(container, options);
  </script>
