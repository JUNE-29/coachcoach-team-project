// 썸머노트 
$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 100,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          
	});
});


$("#applyBtn").click(function(){
    if($.trim($("#startDate").val())==''){
    	swal.fire("운동시작일을 입력해주세요.");
      return false;
    } 
    
    var  Now = new Date(),
    StrNow = String(Now),
    nowYear = String(Now.getFullYear()),
        nowMon = String(Now.getMonth()+1),
    nowDay = String(Now.getDate());
 if(nowMon.length == 1) {
 nowMon = "0"+nowMon
 }
 var NowToday = nowYear+"/"+nowMon+"/"+nowDay;
 console.log('NowToday', NowToday);
    
    if($.trim($("#startDate").val())<NowToday){
    	swal.fire("미래날짜를 입력해주세요.");
      return false;
    } 
    
    $("#applyfrm").submit();
  });


function chk_date() {
	  var startDate = document.getElementById("startDate").value;
	  var datatimeRegexp = /[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])/;

	    if ( !datatimeRegexp.test($('#startDate').val()) ) {
	    	swal.fire("날짜는 yyyy-mm-dd 형식으로 입력해주세요.");
	    }
	}



$('#frm_cancel').click(function(){
	Swal.fire(
		      '신청취소!',
		      '프로그램 목록페이지로 돌아갑니다',
		      'error'
		    ).then(function() {
		        window.location = "../list.jsp";
		    });
	
	
});

