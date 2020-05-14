

var regBtn = $("#regBtn");
regBtn.click(() => {
	var data = {
		starRate:  $("input[name='starRate']:checked").val(),
		no: $('#programNo').val(),
		review: $('#review').val()
	};
	console.log(data)
	$.post('reviewUpdate', data, () => {
		$('#reviewModal').modal('hide');
	});
	
});

$('#reviewModal').on('show.bs.modal', function (e) {
	$('#programNo').val(e.relatedTarget.getAttribute('data-no'));
})

$('#reviewModal').on('hidden.bs.modal', function (e) {
	location.reload();
})

function showpop(frmData){
	    var url    ="reviewForm";
	    var title  = "testpop";
	    var status = "scrollbars=no,width=500,height=500,menubar=false";
	
    window.open("",title,status) ;
     
    frmData.target = title;                    
    frmData.action = url;                    
    frmData.method = "get";
    frmData.submit();    
     
}
