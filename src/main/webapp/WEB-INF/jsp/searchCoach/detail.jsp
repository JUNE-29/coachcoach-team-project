 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<div>
<form action='applyForm' method='get'>
하체튼튼 프로젝트
<button>신청하기</button>
</form>
<form action='applyForm' method='get'>
건강한 몸 만들기 프로젝트
<button>신청하기</button>
</form>


<p>코치 후기</p>
<p>코치 만족도</p>
<p id="star_grade">
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
</p>
</div>
<script>
        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on");  
            $(this).addClass("on").prevAll("a").addClass("on"); 
            return false;
        });
</script>


<jsp:include page="../footer.jsp"/>
