function payChk() {
	//console.log('ddd');
	var chk_pay = document.getElementsByName('payment');
	var chk_cnt = 0; 
	for(var i=0; i<chk_pay.length; i++) {
	    if(chk_pay[i].checked == true) {
	    	chk_cnt++
	    } 
	}

	if (chk_cnt == 0){
		Swal.fire("결제수단을 선택해주세요");
		return;
	} 

	document.frm.submit();
}


$('#cancel_btn').click(function(){
	Swal.fire({
		  title: '결제를 취소하시겠습니까?',
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
			                				Swal.fire({
			                					  title: '취소완료',
			                					  text: "",
			                					  icon: 'success',
			                					  buttons:{
			                						  confirm:{text:'확인',value:true}
			                						  }
			                					}).then((result) => {
			                						if (result.value){
			                							location.href='list'
			                						}
			                					})
			                					   
			                			}
				});
});


