
  $('#findIdbtn').on('click',function() {
	  console.log("d");
	  console.log($('#userName').val());
	  
	  $.ajax({
		 type:'POST',
		 datatype: 'json',
		 data: {userName : $('#userName').val(), userEmail : $('#userEmail').val()},
		 url: 'searchid',
		 success : function(data) {
			 if(data == 0) {
				$('#id_result_text').html("<h2>회원 정보를 다시 입력해주세요!</h2>");
			}
			 else{
				$('#id_value').html(data);
			}
		 }
	  })
	  
	  });
  
