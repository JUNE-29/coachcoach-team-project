// 거절사유 모달 
$(function(){
    $('.rejectBtn').on('click', function(e){
    	console.log("xx");
         e.preventDefault();
         $.ajax({
             url: "rejectForm",
             dataType: "json",
             type: "POST",
             data: {no: $(this).val()} ,
             success: function(data){
             	console.log(data);
                			$('.reject-modal-body').html(
                					"<p>코치님이 보낸 메세지입니다.</p><br>" +
                					"<div style='width:300px; height:200px; border:1px solid #CFDDF3; border-radius:20px;'>"+data.etc+"</div><br>"
                					
                			);
             }
         });
    }); 
 });
