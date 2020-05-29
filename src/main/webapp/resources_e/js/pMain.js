// 후기 더보기
$('#addReview').click(function(){
	$.ajax({
        url: "reivewDetail",
        dataType: "json",
        type: "POST",
        data: {no: $('#programNo').val()} ,
        success: function(data){
        	console.log(data);
        	
        	 for (var i=0; i< data.length; i++){
        		 console.log(data[i].starRate);
        		 
        			 var img = $('#star_img');
        			 if (data[i].starRate != null){
        			 if (data[i].starRate == 0){
        				 img.attr("src", "../../upload/img/star_0.png");
            			 $('#review1').html("등록된 후기가 없습니다.");
        			 } else if (data[i].starRate == 1){
        				 img.attr("src", "../../upload/img/star_1.png");
        			 } else if (data[i].starRate == 2){
        				 img.attr("src", "../../upload/img/star_2.png");
        			 } else if (data[i].starRate == 3){
        				 img.attr("src", "../../upload/img/star_3.png");
        			 } else if (data[i].starRate == 4){
        				 img.attr("src", "../../upload/img/star_4.png");
        			 } else if (data[i].starRate == 5){
        				 img.attr("src", "../../upload/img/star_5.png");
        			 }
        			 img.css('height','20px');
        			 
        			 $('#review1').html(data[i].review)
        			 $('#review2').html(data[i].reviewDate)
        			 $('#review3').html(data[i].member.id)

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
$(document).ready(function(){
    $(".chk_input").change(function(){
        if($(this).is(":checked")){
          $(this).css("background", "#01b1d7")
          $(this).css("color", "#FFFFFF")
        }else{
            $('.check').css("background", "#FFFFFF") 
            $('.check').css("border", "1px solid #ededed")
            $('.check').css("color", "#000000")
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