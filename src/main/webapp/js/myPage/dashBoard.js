
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
   
// 체크시 이벤트 발생
 $(document).ready(function() { 
   $('.ab').on('click', function() { 
   if ( $(this).prop('checked') ) { 
     $(this).parent().addClass('selected'); 
     } else { 
       $(this).parent().removeClass('selected'); 
         } 
     }); 
   });



 $(document).ready(function(){
   $('.owl-carousel').owlCarousel({
     autoWidth: true,
     loop:true,
     autoplay: true,
     dots: true,
     dotsEach: true,
     nav: false
   });
 });
 
 $('.notice-content').on('click', function() {
   var no = $(this).find('input[name="noticeNo"]').val();
   $.ajax({
     type:'GET',
     url:'noticeList',
     data: {
       no:no
     },
     dataType:'json',
     success: function(detail) {
       $('#noticeDetail').find('#notice-title').html('제목'+'<h5 style="font-weight:bold">'+detail.title+'</h5>');
       $('#noticeDetail').find('#notice-programName').html('프로그램명'+'<h5 style="font-weight:bold">'+detail.programName+'</h5>');
       $('#noticeDetail').find('#notice-date').html('등록일'+'<h5>'+detail.createdDate+'</h5>');
       $('#noticeDetail').find('#notice-content').html(detail.content);
       $('#noticeDetail').modal('show');
     }
   })
   
 })
 
 $('#toDoListAdd').on('click', function() {
   var item = $('<tr>');
   var td = $('<td>');
   var input = $('<input type="text" id="toDoListForm" placeholder="내용을 입력해주세요.">');
   input.appendTo(td);
   td.appendTo(item);
   $('.toDoList_list').append(item);

   $('#toDoListForm').keyup(function(e) {
     if(e.keyCode == 13) {
       var memo = $('#toDoListForm').val();
       $.ajax({
         type:'POST',
         url:'toDoListAdd',
         data:{
           memo: memo
         },
         success: function() {
           document.location.reload();
         },
         error: function() {
           $('#toDoListForm').remove();
         }
       })
     }
   })
 })
 
 $('.updateToDoList').on('click', function() {
   console.log($(this).parent('tr'))
   var beforeText = $(this).closest('.memo').html();
   console.log(beforeText)
   var memo = $(this).closest('.memo');
   memo.append($('<input type="text" id="updateToDoListForm">').val(beforeText));
   $('#updateToDoListForm').keyup(function(e) {
     if(e.keyCode == 13) {
       var memo = $('#updateToDoListForm').val();
       var no = $(this).find('input[name="no"]').val();
       $.ajax({
         type:'POST',
         url:'toDoListUpdate',
         data:{
           memo: memo,
           no: no
         },
         success: function() {
           document.location.reload();
         },
         error: function() {
           document.location.reload();
         }
       })
     }
   })
 })
 
 