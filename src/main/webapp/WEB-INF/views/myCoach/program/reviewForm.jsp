<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>후기작성</h1>

<form name='frmData'>
<span class="star-input">
 <span class="input">
      <input type="radio" name="starRate" value="1" id="p1">
      <label for="p1">1</label>
      <input type="radio" name="starRate" value="2" id="p2">
      <label for="p2">2</label>
      <input type="radio" name="starRate" value="3" id="p3">
      <label for="p3">3</label>
      <input type="radio" name="starRate" value="4" id="p4">
      <label for="p4">4</label>
      <input type="radio" name="starRate" value="5" id="p5">
      <label for="p5">5</label>
    </span>
</span>

<input name='no' type='hidden' value='${no}'>
<textarea name='review'  rows='5' cols='50' placeholder='후기를 등록해주세요!'></textarea><br>
<input type='button' value='등록' onclick='send(this.form)'>
</form>
<input type='button' value='취소' onclick='winclose()'>

<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/star.js"></script>
<script>
var starRating = function(){
	var $star = $(".star-input"),
	    $result = $star.find("output>b");
	  
	    $(document)
	  .on("focusin", ".star-input>.input", 
	    function(){
	       $(this).addClass("focus");
	  })
	     
	    .on("focusout", ".star-input>.input", function(){
	      var $this = $(this);
	      setTimeout(function(){
	          if($this.find(":focus").length === 0){
	            $this.removeClass("focus");
	        }
	      }, 100);
	   })
	  
	    .on("change", ".star-input :radio", function(){
	      $result.text($(this).next().text());
	    })
	    .on("mouseover", ".star-input label", function(){
	      $result.text($(this).text());
	    })
	    .on("mouseleave", ".star-input>.input", function(){
	      var $checked = $star.find(":checked");
	        if($checked.length === 0){
	          $result.text("0");
	        } else {
	          $result.text($checked.next().text());
	        }
	    });
	};

	starRating();
        
        function winclose(){
        	window.close(); 
       }

        function send(frmData) {
          frmData.action = "reviewUpdate";               
          frmData.method = "post";
          frmData.submit();    
            window.close(); 
          opener.window.location.reload();
        	}
        

        
</script>
