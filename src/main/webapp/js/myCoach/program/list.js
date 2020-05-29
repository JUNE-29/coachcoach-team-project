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
                			$('#detail-inner-photo-img').attr('src','/coachcoach-team-project/upload/coach/' + data.photo);
                			$('#detail-inner').html("<b>"+
                					data.name+"코치님</b><br>"+
                					"<b>한 줄 소개</b><br>"+
                					data.introduce+
                					"<br><b>기본 정보</b><br>"+
                					data.tel+"<br>"+
                					data.email+"<br>"+
                					data.address+"<br>"+
                					"<b>추가 정보</b><br>"+
                					data.career+"<br>"+
                					data.certification	
                			);  
                			$('#detail-inner-photo-img').css('width','150px');
                			$('#detail-inner-photo').css('float','left');
                			$('#detail-inner-photo').css('width','230px');
                			$('#detail-inner-photo').css('height','200px');
                			$('#detail-inner-photo').css('margin','5px');
                			$('#detail-inner-photo').css('margin-top','20px');
                			$('#detail-inner-photo').css('padding','5px');
                			$('#detail-inner').css('margin','5px');
                			$('#detail-inner').css('padding','5px');
                			$('#detail-inner').css('float','left');
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