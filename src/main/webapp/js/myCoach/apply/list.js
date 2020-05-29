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
                			$('#reject_modal').html(data.etc);
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