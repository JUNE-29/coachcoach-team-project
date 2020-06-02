Chart.plugins.register({
    afterDraw: function(chart) {
        if (chart.data.datasets[0].data.every(item => item === 0)) {
            let ctx = chart.chart.ctx;
            let width = chart.chart.width;
            let height = chart.chart.height;

            chart.clear();
            ctx.save();
            ctx.textAlign = 'center';
            ctx.textBaseline = 'middle';
            ctx.fillText('NO DATA', width / 2, height / 2);
            ctx.restore();
        }
    }
});


var walk_data2 = [];
$.ajax({
  url:"../detailData/monthWalk",
  type:"GET",
  dataType:"json",
  success: function(data) {
    for (d of data) {
      walk_data2.push(d.walkCount)
    }
    var myChart = new Chart($('#walk'), {
        type: 'bar',
        data: {
            labels: ['3주 전', '2주 전', '1주 전', '이번주'],
            datasets: [{
                label: '평균 걸음 수',
                data: walk_data2,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ], 
                borderWidth: 2
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
        responsive: true,
        maintainAspectRatio: true,
        title: {
              display: true,
              text: '주 별 걸음수',
              fontSize: 25,
              fontColor: '#000'
          }
        }
    });
  }
})


$.ajax({
  url:'../detailData/weekWorkout',
  type:'GET',
  dataType:'json',
  success: function(data) {
    var label = [];
    var workoutData = [];
    for (d of data) {
      for(unit of d.workoutUnit) {
        label.push(unit.name);
        workoutData.push(unit.unit);
      }
    }
    myWorkoutChart = new Chart($('#workoutAmount'), {
        type: 'pie',
        data: {
            labels: label,
            datasets: [{
                data: workoutData,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 230, 150, 0.2)',
                    'rgba(75, 162, 86, 0.2)',
                    'rgba(255, 192, 192, 0.2)',
                    'rgba(75, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 230, 150, 1)',
                    'rgba(75, 162, 86, 1)',
                    'rgba(255, 192, 192, 1)',
                    'rgba(75, 102, 255, 1)'
                ],
                borderWidth: 2
            }]
        },
        options: {
          title: {
            display: true,
            text: '이 주의 운동 내역(분)',
            fontSize: 25,
            fontColor: '#000'
          },
          responsive: true,
          maintainAspectRatio: true
        }
    })
  }
})

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
   var item = $('<span>');
   var span = $('<span>');
   var input = $('<input type="text" id="toDoListForm" placeholder="내용 입력 후 엔터 누르기!">');
   input.appendTo(span);
   span.appendTo(item);
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
   var beforeText = $(this).closest('.item').find('.memo').text();
   var memo = $(this).closest('.item').find('.memo');
   $(memo).text('');
   memo.append($('<input type="text" id="updateToDoListForm">').val(beforeText));
   var no = $(this).find('input[name="no"]').val();
   $('#updateToDoListForm').keyup(function(e) {
     if(e.keyCode == 13) {
       var memo = $('#updateToDoListForm').val();
       console.log(no)
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
 
 