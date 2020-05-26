$(document).ready( function () {
  
    $('#myTable').DataTable({
      searching: false,
      pageLength: 5
    });
    $('#myTable_length, #myTable_info').hide();
} );

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