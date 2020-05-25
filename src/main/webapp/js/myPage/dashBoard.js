
//toDoList 모두선택
$('#check-all').click(function() {
  if (!$('.ab').prop('checked')) {
    $('.ab').prop('checked', true);
  } else {
    $('.ab').prop('checked', false);
  }
});


function selectDelete(){
     var selectDeleteUrl = "<c:out value='toDoListTestDelete'/>";

     var check_count = document.getElementsByName("toDoList1").length;
     var list = new Array();
     var sentCnt = 0;
     var str = "";
     var check = 0;
     //12 13
       for (var i=0; i<check_count; i++) {
           if (document.getElementsByName("toDoList1")[i].checked == true) {
             str += document.getElementsByName("toDoList1")[i].value;
             str += ";";
             check = 1;
             /*
              list[sentCnt] = document.getElementsByName("toDoList1")[i].value;
              sentCnt++;*/
           } 
       }
     if(check < 1) {
       alert("1개 이상 선택해주세요");
    }
       location.href= 'toDoListTestDelete?str='+str;
   }
   
  /*
   function deleteStart(list){
     alert(list.length);
     var a = "";
     var s = ",";
      for (var i=0; i<list.length; i++) {
        a = list[i];
        alert(a);
        a = a + s ;
          alert(a);
      }
   }
   */
   
   
  // 체크시 이벤트 발생
     $(document).ready(function() { 
       $('.ab').on('click', function() { 
         if ( $(this).prop('checked') ) { 
           $(this).parent().addClass('selected'); 
           } else { 
             $(this).parent().removeClass('selected'); 
             } console.log(this);
         }); 
       });



