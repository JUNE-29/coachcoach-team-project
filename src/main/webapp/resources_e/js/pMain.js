// 후기 더보기
$('#addReview').click(function(){
	var startNo = Number($('#startNo').val());
	var endNo = 3;
	$.ajax({
        url: "reivewDetail",
        dataType: "json",
        type: "POST",
        data: {no: $('#programNo').val(),
        	startNo: startNo,
        	endNo, endNo} ,
        success: function(data){
        	console.log(data);
        	var content = "";
        	var img = "";
        	var review ="";
        	var reviewDate ="";
        	var memderId ="";
        	
        	if (data.length == 0){
            	$('#addReview').css('border','white');
            	$('#addReview').css('color','white');
        	} else {
        		
        	
        	 for (var i=0; i< data.length; i++){
        		 		 
        			 if (data[i].starRate != null){
        			 if (data[i].starRate == 0){
        				 img = "<img class='star_img' src='../../upload/img/star_0.png' style='height:20px;'>"
        			 } else if (data[i].starRate == 1){
        				 img = "<img class='star_img' src='../../upload/img/star_1.png' style='height:20px;'>"
        			 } else if (data[i].starRate == 2){
        				 img = "<img class='star_img' src='../../upload/img/star_2.png' style='height:20px;'>"
        			 } else if (data[i].starRate == 3){
        				 img = "<img class='star_img' src='../../upload/img/star_3.png' style='height:20px;'>"
        			 } else if (data[i].starRate == 4){
        				 img = "<img class='star_img' src='../../upload/img/star_4.png' style='height:20px;'>"
        			 } else if (data[i].starRate == 5){
        				 img = "<img class='star_img' src='../../upload/img/star_5.png' style='height:20px;'>"
        			 }
        			 
        			 review = "<p id='review1'>" + data[i].review + "</p>"
        			 reviewDate = "<p id='review2'>" + data[i].reviewDate + "</p>"
        			 memderId = "<p id='review3'>" + data[i].member.id + "</p>"
        			 
        			 
        			 content = img + review + reviewDate + memderId;
        			 $(content).appendTo("#reviewBox");
        			 $('#startNo').val(startNo + 3);
        			 console.log(startNo);
        			 }
        		 } 
        	}
        }
    });
});


// 신청하기 버튼
$(document).ready(function () 
		{
		    $('#apply_Btn').hover(function(){
		        $(this).css('background','#01b1d7');
		        $(this).css('color','#fff');
		        $(this).css('border','none');
		    }, function() {
		        $(this).css('background','#fff');
		        $(this).css('color','#000000');
		        $(this).css('border','1px solid #e3e1e1');
		    });
		});


// 검색
$("#searchBtn").click(function(){
    if($.trim($("#search").val())==''){
    	swal("검색어를 입력해주세요");
      return false;
    } 
    $("#searchfrm").submit();
  });


// 키워드
function chk_keyword() {
    var chk_kwd = document.getElementsByName('tags');
    var chk_cnt = 0; 
    for(var i=0; i<chk_kwd.length; i++) {
        if(chk_kwd[i].checked == true) {
        	chk_cnt++;
        } 
    }
    
       if (chk_cnt > 3){
    	   swal("최대 3개까지 선택가능합니다.");
          return;
        }

       if (chk_cnt == 0){
    	   swal("키워드를 선택해주세요.");
          return;
        }

    document.keyword.submit();
}

// 키워드 선택
//키워드 선택
$(document).ready(function(){
    $("#ckh_1").change(function(){
        if($("#ckh_1").is(":checked")){
          $("#chk1").css("background", "#01b1d7")
          $("#chk1").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_2").change(function(){
        if($("#ckh_2").is(":checked")){
          $("#chk2").css("background", "#01b1d7")
          $("#chk2").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_3").change(function(){
        if($("#ckh_3").is(":checked")){
          $("#chk3").css("background", "#01b1d7")
          $("#chk3").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_4").change(function(){
        if($("#ckh_4").is(":checked")){
          $("#chk4").css("background", "#01b1d7")
          $("#chk4").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_5").change(function(){
        if($("#ckh_5").is(":checked")){
          $("#chk5").css("background", "#01b1d7")
          $("#chk5").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_6").change(function(){
        if($("#ckh_6").is(":checked")){
          $("#chk6").css("background", "#01b1d7")
          $("#chk6").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_7").change(function(){
        if($("#ckh_7").is(":checked")){
            $("#chk7").css("background", "#01b1d7")
            $("#chk7").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});
$(document).ready(function(){
    $("#ckh_8").change(function(){
        if($("#ckh_8").is(":checked")){
            $("#chk8").css("background", "#01b1d7")
            $("#chk8").css("color", "#FFFFFF")
        }else{
            $(".check").css("background", "#FFFFFF") 
            $(".check").css("border", "1px solid #ededed")
            $(".check").css("color", "#000000")
        }
    });
});

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