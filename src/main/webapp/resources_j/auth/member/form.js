"use strict"
var form = document.form

$('#m_login_btn').on('click',function() {

	  var userid = $('#id').val();
	  var userpw = $('#password').val();
	  var user = {
		id: userid,
		password: userpw
	  };
	
	 $.ajax({
         type: 'POST',
         datatype: "json",
         data: user,
         url: "loginIdPwcheck",
         success : function(result){
        	 if(result == 1){
        		 document.form.submit();
        	 } else {
               Swal.fire({
	                 icon: 'warning',
	                 html: '아이디, 비밀번호를 확인해주세요. <br> 또는 이메일 인증이 필요합니다. '
	               })
             	}
         	}
         });
});