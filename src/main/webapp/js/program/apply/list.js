//번호 하이픈 정규식
$(document).ready(function() {
	var tel = $('#tel').val();
	tel = tel.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
	$('#tel').attr('value',tel);
});

// 삭제 모달
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

$('#apply_btn').click(function(){
	Swal.fire(
		      '신청완료!',
		      '',
		      'success'
		    ).then(function() {
		        window.location = "../../myCoach/apply/list.jsp";
		    });
	
	
});



