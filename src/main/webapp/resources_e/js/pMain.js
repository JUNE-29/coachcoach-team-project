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
    $("#ckh_1").change(function(){
        if($("#ckh_1").is(":checked")){
          $("#chk1").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_2").change(function(){
        if($("#ckh_2").is(":checked")){
          $("#chk2").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_3").change(function(){
        if($("#ckh_3").is(":checked")){
          $("#chk3").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_4").change(function(){
        if($("#ckh_4").is(":checked")){
          $("#chk4").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_5").change(function(){
        if($("#ckh_5").is(":checked")){
          $("#chk5").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_6").change(function(){
        if($("#ckh_6").is(":checked")){
          $("#chk6").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_7").change(function(){
        if($("#ckh_7").is(":checked")){
          $("#chk7").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_8").change(function(){
        if($("#ckh_8").is(":checked")){
          $("#chk8").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});