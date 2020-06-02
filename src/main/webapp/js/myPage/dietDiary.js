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


$('.fooddelete').click(function(){
	Swal.fire({
		  title: '정말로 삭제하시겠습니까?',
		  text: "삭제되었습니다.",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  buttons:{
			  cancel: {text:'아니오',value:false },
			  confirm:{text:'네',value:true}
			  }
		}).then((result) => {
			console.log(result);
			if (result.value) {
				$.ajax({
					  url: "delete",
			             type: "POST",
			             data: {no: $(this).val()} ,
			             success: function(data){
			                				Swal.fire({
			                					  title: '삭제완료',
			                					  text: "",
			                					  icon: 'success',
			                					  buttons:{
			                						  confirm:{text:'확인',value:true}
			                						  }
			                					}).then((result) => {
			                						if (result.value){
			                							history.back();
			                						}
			                					})
			                					   
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