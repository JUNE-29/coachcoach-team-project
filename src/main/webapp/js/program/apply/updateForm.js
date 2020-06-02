//번호 하이픈 정규식
$(document).ready(function() {
	var tel = $('#tel').val();
	tel = tel.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
	$('#tel').attr('value',tel);
});

$("#updatebtn").click(function(){
    if($.trim($("#startDate").val())==''){
    	swal.fire("운동시작일을 입력해주세요.");
      return false;
    } 
    
//오늘날짜 구하기
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
		    });


function chk_date() {
	  var startDate = document.getElementById("startDate").value;
	  var datatimeRegexp = /[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])/;

	    if ( !datatimeRegexp.test($('#startDate').val()) ) {
	    	swal.fire("날짜는 yyyy-mm-dd 형식으로 입력해주세요.");
	    }
	}



