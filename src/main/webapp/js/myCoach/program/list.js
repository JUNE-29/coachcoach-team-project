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
                			$('#detail-inner-photo').html(
                					"<img src='${pageContext.servletContext.contextPath}/upload/coach/"+data.photo+" height='200';>"
                			);  
                			$('#detail-inner').html(
                					data.name+"코치님<br>"+
                					"<p>한 줄 소개<br>"+
                					data.introduce+
                					"<p>기본 정보<br>"+
                					data.tel+"<br>"+
                					data.email+"<br>"+
                					data.address+"<br>"+
                					"추가 정보<br>"+
                					data.career+"<br>"+
                					data.certification	
                			);  
                			$('#detail-inner-photo').css('float','left');
                			$('#detail-inner-photo').css('width','230px');
                			$('#detail-inner-photo').css('height','200px');
                			$('#detail-inner-photo').css('margin','5px');
                			$('#detail-inner-photo').css('padding','5px');
                			$('#detail-inner').css('margin','5px');
                			$('#detail-inner').css('padding','5px');
                			$('#detail-inner').css('float','left');
                			$('.modal-title').css('color','#5fdde5');
                			$('.modal-title').css('font-weight','bold');
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

// 리뷰 모달 css
$('#review-inner-modal').css('text-align','center');
$('#review').css('margin-top','50px');


// 모달 타이틀
$('.modal-title').css('color','#5fdde5');
$('.modal-title').css('font-weight','bold');




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