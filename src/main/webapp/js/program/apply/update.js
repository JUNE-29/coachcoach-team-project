//번호 하이픈 정규식
$(document).ready(function() {
	var tel = $('#tel').val();
	tel = tel.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
	$('#tel').attr('value',tel);
});

$('#apply_btn2').click(function(){
	Swal.fire(
		      '신청완료!',
		      '',
		      'success'
		    ).then(function() {
		        window.location = "../../myCoach/apply/list.jsp";
		    });
	
	
});

