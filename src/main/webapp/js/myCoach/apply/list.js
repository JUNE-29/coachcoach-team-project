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


$('.calcel_btn').click(function(){
	Swal.fire({
		  title: '정말로 삭제하시겠습니까?',
		  text: "삭제 후 재신청 가능합니다.",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  buttons:{
			  cancle: {text:'아니오',value:false },
			  confirm:{text:'네',value:true}
			  }
		}).then((result) => {
			console.log(result);
			if (result.value) {
				$.ajax({
					  url: "delete",
			             dataType: "json",
			             type: "POST",
			             data: {applyNo: $(this).val()} ,
			             success: function(data){
			                			if (data == 1){
			                				Swal.fire({
			                					  title: '삭제완료',
			                					  text: "",
			                					  icon: 'success',
			                					  buttons:{
			                						  confirm:{text:'확인',value:true}
			                						  }
			                					}).then((result) => {
			                						if (result.value){
			                							location.reload();
			                						}
			                					})
			                					   
			                			}
			             }
				});
			  } else if (result.dismiss === Swal.DismissReason.cancel) {
			    Swal.fire(
			      '삭제취소',
			      ':)',
			      'error'
			    )
			  }
		})
});