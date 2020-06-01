
function isSame() {
  var pw = document.getElementById("pw").value;
  var comfirmPW = document.getElementById("pwCheck").value;
  
  if (pw.length < 8){
	  Swal.fire("비밀번호는 8~12자 영문 대문자/소문자/숫자로 입력해야합니다.")
  } 
  
  if (document.getElementById("pw").value!='' && document.getElementById("pwCheck").value!=''){
	  if (document.getElementById("pw").value==document.getElementById("pwCheck").value){
		  document.getElementById("same").innerHTML='비밀번호가 일치합니다.';
		  document.getElementById("same").style.color='blue';
	  } else {
	      document.getElementById("same").innerHTML='비밀번호가 일치하지 않습니다.';
	      document.getElementById("same").style.color='red';
	  }
  }
}


// 비밀번호 수정
$('#modify_btn').click(function(){
	if ($('#pw').val()==$('#pwCheck').val()){
		$.ajax({
			url: "modify",
		    dataType: "json",
		     type: "POST",
			enctype:"multipart/form-data",
		             data: {
		            	 no:$('#no').val(),
		            	 pw: $('#pw').val(),
		            	 updatePw: $('#pwCheck').val()} ,
		             success: function(data){
		            	 console.log(data)
		                			if (data == 1){
		                				Swal.fire({
		                					  title: '수정완료',
		                					  text: "",
		                					  icon: 'success',
		                					  buttons:{
		                						  confirm:{text:'확인',value:true}
		                						  }
		                					})
		                			} else {
		                				Swal.fire({
		                					  title: '수정실패',
		                					  text: "",
		                					  icon: 'error',
		                					  buttons:{
		                						  confirm:{text:'확인',value:true}
		                						  }
		                					})
		                			}
		             }
			});
		} else {
			Swal.fire({
				  icon: 'error',
				  title: '비밀번호가 일치하지 않습니다',
				});
		}
});


