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

//번호 하이픈 정규식
$(document).ready(function() {
	var tel = $('#tel').val();
	tel = tel.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
	$('#tel').attr('value',tel);
});



$("#applyBtn").click(function(){
    if($.trim($("#startDate").val())==''){
    	swal.fire("운동시작일을 입력해주세요.");
      return false;
    } 
    
    // 오늘날짜 구하기
    var date = new Date(); 
    var year = date.getFullYear(); 
    var month = new String(date.getMonth()+1); 
    var day = new String(date.getDate()); 

    // 한자리수일 경우 0을 채워준다. 
    if(month.length == 1){ 
      month = "0" + month; 
    } 
    if(day.length == 1){ 
      day = "0" + day; 
    } 
    var NowToday = year+"-"+month+"-"+day;
    console.log('NowToday', NowToday);
    
    if($.trim($("#startDate").val()) < NowToday){
    	swal.fire("미래날짜를 입력해주세요.");
      return false;
    } 
    
    $("#applyfrm").submit();
  });


// 신청일 오늘날짜
$(document).ready(function(){
	var date = new Date();
	var yyyy = date.getFullYear();
	var mm = date.getMonth()+1 > 9 ? date.getMonth()+1 : '0' + date.getMonth()+1;
	var dd = date.getDate() > 9 ? date.getDate() : '0' + date.getDate();
	 
	$("input[type=date]").val(yyyy+"-"+mm+"-"+dd);
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

