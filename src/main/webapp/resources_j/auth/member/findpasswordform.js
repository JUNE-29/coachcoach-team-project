//document.querySelector("#findPwBtn").onclick = () => {
//	var form = document.form
//	console.log("#userId");
//	console.log("#userEmail");
//	document.form.submit();
//}

  $('#findPwBtn').on('click',function() {
	  
	  var userid = $('#userId').val();
	  var useremail = $('#userEmail').val();
	  var user = {
		userId: userid,
		userEmail: useremail
	  };
	  
	  console.log(userid);
	  
	  $.ajax({
		 type:'POST',
		 datatype: 'json',
		 data: user,
		 url: 'searchPwConfirm',
		 success : function(result) {
			 if(result == 0) {
					Swal.fire({
		        icon: 'error',
		        title: '입력을 실패하였습니다.',
		        text: '아이디와 이메일을 다시한번 확인해주세요.',
		      })
			}
			 else{
		      $.ajax({
		    	  type:'POST',
		    	  datatype: 'json',
		    	  data: user,
		    	  url:'searchPassword',
		    	  success : function(data) {
		    		  Swal.fire({
					        icon: 'success',
					        title: '확인이 되었습니다.',
					        text: '해당 이메일로 임시비밀번호를 발송하였습니다.',
					        confirmButtonText: '확인'
				      }).then((result) => {
				    	  if (result.value) {
				    		   
				    		    location.href='form'; 
				    		    	
				    		  }
				    	})
		    	  }
		      })
			}
		 }
	  })
	  
	  });
