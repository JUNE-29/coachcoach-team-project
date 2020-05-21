
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
				$('#id_value').html("<img src='https://lh3.googleusercontent.com/proxy/ThbMLfSWJjLuA5h24EEB7QWSpbWfmvVZ91BZDV5RKI6qoGYxasfBWupHmOH23JZuBhr6dD4qDICPHfba8Svnu0y4YsfEoo6bnjxI14IUvQ1e0-4Wxs9PuskyqyiOntWZCHMSneOnzGmWcCU9_A5Q-XSGPj3nITEiKI2kKgTCD-j6BFc12Eace0Jn_OJusVRUdRCJ1wA_hV1J'" +
						"width='100'>" +
						"<h5>회원 정보를 다시 입력해주세요!</h5>");
			}
			 else{
				$('#id_value').html(data);
			}
		 }
	  })
	  
	  });
  
