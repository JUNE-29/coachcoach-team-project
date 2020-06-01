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
Chart.defaults.global.defaultFontSize = 18;
var myChart;
var myWorkoutChart;

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
            ctx.fillText('오늘의 운동을 기록해주세요.', width / 2, height / 2);
            ctx.restore();
        }
    }
});


if ($('#week').hasClass('active')) {
  $.ajax({
    url:'dayWorkout',
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
              text: '오늘의 운동 내역(분)',
              fontSize: 25
            },
            responsive: true,
            maintainAspectRatio: true
          }
      })
    }
  })
  
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
  	            text: '요일 별 걸음수',
  	            fontSize: 25
  	        }
  		    }
  		});
  	}
  })
}

$('div.walk').on('click', function(){
	if($(this).hasClass('active')) {
		return;
	} else {
		$(this).parent('div').find('.active').removeClass('active');
		myWorkoutChart.destroy();
		myChart.destroy();
		$(this).addClass('active');
	}
	
if ($('#week').hasClass('active')) {
  
  $.ajax({
    url:'dayWorkout',
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
              text: '오늘의 운동 내역(분)',
              fontSize: 25
            },
            responsive: true,
            maintainAspectRatio: true
          }
      })
    }
  })
  
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
  	            text: '요일 별 걸음수',
  	            fontSize: 25
  	        }
  		    }
  		});
  	}
  })
}


if ($('#month').hasClass('active')) {
  $.ajax({
    url:'weekWorkout',
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
              fontSize: 25
            },
            responsive: true,
            maintainAspectRatio: true
          }
      })
    }
  })
  
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
	            fontSize: 25
	        }
		    }
		});
	}
})
}

if ($('#year').hasClass('active')) {
  $.ajax({
    url:'monthWorkout',
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
              text: '이 달의 운동 내역(분)',
              fontSize: 25
            },
            responsive: true,
            maintainAspectRatio: true
          }
      })
    }
  })
  
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
	            text: '월 별 걸음수',
	            fontSize: 25
	        }
		    }
		});
	}
})
}
})

$.ajax({
  url:'yearWeight',
  type: 'GET',
  dataType: 'json',
  success: function(data) {
    var wData = [];
    for (d of data) {
      wData.push({x:moment(d.workoutDate), y:d.weight});
    }
    var myWeightChart = new Chart($('#weight'), {
        type: 'line',
        data: {
          datasets: [{
              label: '몸무게',
              data: wData,
              lineTension: 0.2,
              fill: false,
              borderColor: 'orange',
              backgroundColor: 'transparent',
              pointBorderColor: 'orange',
              pointBackgroundColor: 'rgba(255,150,0,0.5)',
              borderDash: [5, 5],
              pointRadius: 5,
              pointHoverRadius: 10,
              pointHitRadius: 30,
              pointBorderWidth: 2,
              pointStyle: 'rectRounded'
          }]
      },
        options: {
          title: {
            display: true,
            text: '몸무게 변화',
            fontSize: 25
          },
            scales: {
                xAxes: [{
                  gridLines: {
                    display: false,
                    color: "black"
                  },
                  type: 'time',
                  position: 'bottom',
                  time: {
                    unit: 'month',
                    unitStepSize: 0.5,
                    tooltipFormat: 'yyyy-MM-DD',
                    displayFormats: {
                      month: 'yyyy-MM'
                    }
                  }
              }],
              yAxes: [{
                gridLines: {
                  color: "grey",
                  borderDash: [2, 5],
                },
                scaleLabel: {
                  display: true,
                  labelString: "kg",
                }
              }]
            },
        responsive: true,
        maintainAspectRatio: true
        }
    });
  }
})


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

