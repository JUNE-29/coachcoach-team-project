

$("#applyBtn").click(function(){
    if($.trim($("#startDate").val())==''){
    	swal("운동시작일을 입력해주세요.");
      return false;
    } 
    $("#applyfrm").submit();
  });


function chk_date() {
	  var startDate = document.getElementById("startDate").value;
	  var datatimeRegexp = /[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])/;

	    if ( !datatimeRegexp.test($('#startDate').val()) ) {
	    	swal("날짜는 yyyy-mm-dd 형식으로 입력해주세요.");
	    }
	}



