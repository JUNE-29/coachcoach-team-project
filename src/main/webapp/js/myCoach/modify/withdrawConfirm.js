
// 탈퇴
$('#withdraw_btn').click(function(){
	Swal.fire({
		  title: '정말로 탈퇴하시겠습니까?',
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  buttons:{
			  cancle: {text:'아니오',value:false },
			  confirm:{text:'네',value:true}
			  }
		}).then((result) => {
			if (result.value) {
		$.ajax({
			url: "withdraw",
		    dataType: "json",
		     type: "POST",
			enctype:"multipart/form-data",
		             data: {
		            	 no:$('#no').val(),
		            	 withdrawalReason: $('.withdrawalReason').val(),
		            	 withdrawalReason2:$('#withdrawalReason2').val()},
		             success: function(data){
		            	 console.log(data)
		                			if (data == 1){
		                				Swal.fire({
		                					  title: '탈퇴완료',
		                					  text: "그동안 코치코치 서비스를 이용해 주셔서 감사합니다.",
		                					  icon: 'success',
		                					  buttons:{
		                						  confirm:{text:'확인',value:true}
		                						  }
		                					}).then((result) => {
		                						location.href="../../../index.jsp"
		                					})
		                					
		                			} else {
		                				Swal.fire({
		                					  title: '탈퇴실패',
		                					  text: "",
		                					  icon: 'error',
		                					  buttons:{
		                						  confirm:{text:'확인',value:true}
		                						  }
		                					})
		                			}
		             }
			});
			} else if (result.dismiss === Swal.DismissReason.cancel) {
			   
			  }
		})
});


