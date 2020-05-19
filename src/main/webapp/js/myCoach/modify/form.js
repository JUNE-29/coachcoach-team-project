
function isSame() {
  var pw = document.getElementById("pw").value;
  var comfirmPW = document.getElementById("pwCheck").value;
  
  if (pw.length < 8){
	  swal("비밀번호는 8~12자 영문 대문자/소문자/숫자로 입력해야합니다.")
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

function frmsubmit() {
	if (document.getElementById("pw").value.length < 8){
		swal("비밀번호는 8~12자로 입력해주세요.")
	    return false;
	  } 
	
	if (document.getElementById("pw").value!=document.getElementById("pwCheck").value){
		swal("비밀번호가 일치하지 않습니다.");
		 return false;
	    }
	  
	return true;
	}


