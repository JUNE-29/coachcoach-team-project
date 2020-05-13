<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>후기작성</h1>


<p id="star_grade">
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
        <a href="#">★</a>
</p>

<form name='frm' action='reviewUpdate' method='post' enctype='multipart/form-data'>
<input name='no' type='hidden' value='${no}'>
<textarea name='review' rows='5' cols='50' placeholder='후기를 등록해주세요!'></textarea><br>
<input type='button' value='등록' onclick='send()'>
</form>

<input type='button' value='취소' onclick='winclose()'>
<script>

        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on"); 
            $(this).addClass("on").prevAll("a").addClass("on");
            return false;
        });
        
        
        function winclose(){
        	window.close(); 
       }

        function send() {
        	  document.frm.submit();
        	  window.close();
        	  location.reload();
        	}
        
</script>
