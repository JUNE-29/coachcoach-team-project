
$('#apply_btn2').click(function(){
	Swal.fire(
		      '신청완료!',
		      '',
		      'success'
		    ).then(function() {
		        window.location = "../../myCoach/apply/list.jsp";
		    });
	
	
});

