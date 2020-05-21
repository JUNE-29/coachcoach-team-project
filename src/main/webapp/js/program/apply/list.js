
function chk_del(){
	swal({
		  title: "신청서를 삭제하시겠습니까?",
		  text: "삭제 후 재신청 가능합니다.",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal("삭제완료!", {
		      icon: "success",
		    });
		    
		  } else {
			
		  }
		});
	
	
}
	
 
 
	 
