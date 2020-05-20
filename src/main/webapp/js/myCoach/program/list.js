// 상세보기 모달 
$(function(){
    $('.detailBtn').on('click', function(e){
         e.preventDefault();
         $.ajax({
             url: "coachDetail",
             dataType: "json",
             type: "POST",
             data: {no: $(this).val()} ,
             success: function(data){
                			$('.detail-modal-body').html(
                					"<img src='${pageContext.servletContext.contextPath}/upload/coach/"+data.photo+" height='200';><br>"+
                					data.name+"코치님<br>"+
                					"<p>한 줄 소개<br>"+
                					data.introduce+
                					"<p>기본 정보<br>"+
                					data.tel+"<br>"+
                					data.email+"<br>"+
                					data.address+"<br>"+
                					"추가 정보<br>"+
                					data.career+"<br>"+
                					data.certification+"<br>"
                					
                			);
             }
         });
    }); 
 });


// 리뷰 모달 
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