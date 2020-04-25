 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<div>
<c:forEach items="${programList}" var="programList">
<form action='applyForm' method='post'>
${programList.name}<button>신청하기</button>
<input name='${programList.no}' type='hidden'><br>
<input name='${programList.coachNo}' type='hidden'><br>
</form>
</c:forEach>




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
