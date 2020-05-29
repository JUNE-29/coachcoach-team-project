$(document).ready( function () {
  
    $('#myTable').DataTable({
      searching: false,
      pageLength: 5
    });
    $('#myTable_length, #myTable_info').hide();
} );

$('.addWorkoutButton').on('click', function(e){
  if($('input[name="coachAccess"]').length>0) {
    Swal.fire(
         '회원 전용이예요.'
     )
     return;  
   }

})

if ($('#walkWeek').hasClass('active')) {
var walk_data = [];
$.ajax({
	url:"weekWalk",
	type:"GET",
	dataType:"json",
	success: function(data) {
		for (d of data) {
			walk_data.push(d.walkCount)
		}
		myChart = new Chart($('#walk'), {
		    type: 'horizontalBar',
		    data: {
		        labels: ['일', '월', '화', '수', '목', '금', '토'],
		        datasets: [{
		            label: '걸음 수',
		            data: walk_data,
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(119,119,119,0.2)'
		            ], 
		            borderWidth: 1
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
	            text: '요일 별 걸음수',
	            fontSize: 30
	        }
		    }
		});
	}
})

}


var myChart;
$('div.walk').on('click', function(){
	if($(this).hasClass('active')) {
		return;
	} else {
		$(this).parent('div').find('.active').removeClass('active');
		myChart.destroy();
		$(this).addClass('active');
	}
	
if ($('#walkWeek').hasClass('active')) {
var walk_data = [];
$.ajax({
	url:"weekWalk",
	type:"GET",
	dataType:"json",
	success: function(data) {
		for (d of data) {
			walk_data.push(d.walkCount)
		}
		myChart = new Chart($('#walk'), {
		    type: 'horizontalBar',
		    data: {
		        labels: ['일', '월', '화', '수', '목', '금', '토'],
		        datasets: [{
		            label: '걸음 수',
		            data: walk_data,
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(119,119,119,0.2)'
		            ], 
		            borderWidth: 1
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
	            text: '요일 별 걸음수',
	            fontSize: 30
	        }
		    }
		});
	}
})

}


if ($('#walkMonth').hasClass('active')) {
var walk_data2 = [];
$.ajax({
	url:"monthWalk",
	type:"GET",
	dataType:"json",
	success: function(data) {
		for (d of data) {
			walk_data2.push(d.walkCount)
		}
		myChart = new Chart($('#walk'), {
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
		            borderWidth: 1
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
	            fontSize: 30
	        }
		    }
		});
	}
})
}

if ($('#walkYear').hasClass('active')) {
var walk_data3 = [];
$.ajax({
	url:"yearWalk",
	type:"GET",
	dataType:"json",
	success: function(data) {
		for (d of data) {
			walk_data3.push(d.walkCount)
		}
		myChart = new Chart($('#walk'), {
		    type: 'bar',
		    data: {
		        labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        datasets: [{
		            label: '평균 걸음 수',
		            data: walk_data3,
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ], 
		            borderWidth: 1
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
	            text: '월 별 걸음수',
	            fontSize: 30
	        }
		    }
		});
	}
})
}
})
var myWeightChart = new Chart($('#weight'), {
    type: 'line',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
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
    maintainAspectRatio: true
    }
});

var myWorkoutChart = new Chart($('#workoutTimes'), {
	
    type: 'pie',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
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
    maintainAspectRatio: true
    }
});


$('#workoutSubmit').on('click', function() {
  var workoutNoList = new Array();
  var unitList = new Array();
  $('#memberWorkoutAdd select[name="workoutNo"] option:selected').each(function(index) {
      workoutNoList.push($(this).attr('value'));
  });
  var hasDups = !workoutNoList.every(function(v,i) {
    return workoutNoList.indexOf(v) == i;
  });
  if(hasDups) {
    Swal.fire(
        '같은 운동 종목을 두개 이상 등록할 수 없습니다.'
    )
    return;
  }
  if(!workoutNoList.length>0) {
    Swal.fire(
        '최소 한개 운동을 기록해주세요.'
    )
    return;
  }
  if(!$('#memberWorkoutAdd input[name="weight"]').val()) {
	    Swal.fire(
	        '오늘 몸무게를 기록해주세요.'
	    )
	    return;
	  }
  if(!$('#memberWorkoutAdd input[name="walkCount"]').val()) {
	    Swal.fire(
	        '오늘 걸음수를 기록해주세요.'
	    )
	    return;
	  }
  $('#memberWorkoutAdd select[name="unit"] option:selected').each(function(index) {
    unitList.push($(this).attr('value'));
  });
  $.ajaxSettings.traditional = true;
  $.ajax({
    type: 'POST',
    url: 'memberWorkoutAdd',
    data: {
      memberNo:$('#memberWorkoutAdd input[name="memberNo"]').val(),
      weight:$('#memberWorkoutAdd input[name="weight"]').val(),
      walkCount:$('#memberWorkoutAdd input[name="walkCount"]').val(),
      workoutNoList:workoutNoList,
      unitList:unitList
    },
    success: function (e) {
      Swal.fire({
        title: '등록 완료',
        text: '등록을 완료했습니다.',
        icon: 'success',
        confirmButtonText: '확인'
        }).then((result) => {
          if (result.value) {
              location.reload();
          }
        })
    },
    error: function(e) {
      Swal.fire({
        title: '저런!',
        text: '다시 시도해주세요.',
        icon: 'error',
        confirmButtonText: '확인'
        })
    }
  })
  
});


$('.memberWorkoutDetail-button').on('click', function(){
  var workoutListNo = $(this).find('.workoutListNo').val();
  $.ajax({
    method:'GET',
    url: 'memberWorkoutDetail',
    data:{
      workoutListNo:workoutListNo
    },
    dataType: 'json',
    success: function(detail) {
      $('#memberWorkoutDetail input[name="workoutListNo"]').val(detail.workoutListNo);
      $('#memberWorkoutDetail .date').html(detail.workoutDate);
      $('#memberWorkoutDetail .weight').html(detail.weight+'kg');
      $('#memberWorkoutDetail .walkCount').html(detail.walkCount+'걸음');
      $('#memberWorkoutDetail .modal-body').append('<div class="row">');
      for (var i=0; i < detail.workoutUnit.length; i++) {
        var div = $('<div class="col-md-6">');
        var div2 = $('<div class="col-md-6">');
        div.html(detail.workoutUnit[i].name).appendTo($('.modal-body .row'));
        div2.html(detail.workoutUnit[i].unit+"분").appendTo($('.modal-body .row'));
      }
      
    },
    error: function(e) {
      Swal.fire({
        title: '저런!',
        text: '다시 시도해주세요.',
        icon: 'error',
        confirmButtonText: '확인'
        })
    }
  })
})

$('#workoutDelete').on('click', function() {
  Swal.fire({
      title: '정말 삭제하시겠어요?',
      text: "삭제하시면 복구가 불가능합니다!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '삭제할래요.'
    }).then((result) => {
      if (result.value) {
        $.ajax({
              type: "GET",
              url: "memberWorkoutDelete",
              data: {
                no:$('#memberWorkoutDetail input[name="workoutListNo"]').val()
              },
              success: function (data) {
                  Swal.fire({
                    title: '삭제완료!',
                    text: '삭제했습니다.',
                    icon: 'success',
                    confirmButtonText: '확인'
                  }).then(() => {
                    location.reload()
                    })
                  },
              error: function (e) {
                Swal.fire({
                  title: '저런!',
                  text: '다시 시도해주세요.',
                  icon: 'error',
                  confirmButtonText: '확인'
                  })
                }
             })
           }
        })
})

// 모달 close했을때 리셋
  $('#memberWorkoutDetail').on('hidden.bs.modal', function (e) {
    $('#memberWorkoutDetail .modal-body .row').remove();
  });

var table = $('#workout-select').clone();
// add모달에서 운동종목 +-할 때
$('#workoutUnitAdd').on('click', function() {
	var targetDiv = $('.workout-select-div');
	targetDiv.append(table.clone());
})

$('.workout-select-div').on('click', '.workoutUnitDelete', function() {
	$(this).closest('table').detach();
})

