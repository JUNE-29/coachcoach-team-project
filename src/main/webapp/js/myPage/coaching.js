
// 서머노트 에디터
$('.summernote').summernote({
  height: 300,                 // 에디터 높이
  minHeight: null,             // 최소 높이
  maxHeight: null,             // 최대 높이
  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
  lang: "ko-KR",          // 한글 설정
  placeholder: '최대 21,844자까지 쓸 수 있습니다',  //placeholder 설정,
  callbacks: {	//여기 부분이 이미지를 첨부하는 부분
		onImageUpload : function(files) {
			uploadSummernoteImageFile(files[0],this);
		}
	}
});

function uploadSummernoteImageFile(file, editor) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		processData : false,
		success : function(data) {
        	//항상 업로드된 파일의 url이 있어야 한다.
			$(editor).summernote('insertImage', data.url);
		}
	});
}

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
  var calendar = new FullCalendar.Calendar(calendarEl, {
    customButtons: {
      myCustomButton: {
        text: '운동계획 등록하기',
        click: function() {
          if (typeof startDate !== 'undefined') {
            $('#calendarAddForm input[name="startDate"]').val(startDate);
          }
          if(typeof endDate !== 'undefined') {
            $('#calendarAddForm input[name="endDate"]').val(moment(endDate).subtract('1', 'days').format("YYYY-MM-DD"));
          }
          if($('input[name="checkIfMember"]').length>0) {
            Swal.fire('코치 전용이예요');
            return;
          }
          $('#calendarAddForm').modal('show');
        }
      }
    },
    plugins: ['interaction', 'dayGrid'],
    selectable: true,
    header: {
      left: 'myCustomButton',
      center: 'title'
    },
    locale: 'ko',
    select: function(info) {
      startDate=info.startStr;
      endDate=info.endStr;
    },
    selectAllow: function(selectInfo) {
      if (new Date()-selectInfo.start <= 0) {
        return true;
      }
      return false;
    },
    eventColor: '#e07000',
    eventTextColor: '#fff',
    displayEventTime: false,
    eventClick: function(info) {
      $.ajax({
        type: "POST",
        url: "detail",
        data:{
          no:info.event._def.extendedProps.planNo
        },
        dataType: "json",
        cache: false,
        timeout: 600000,
        success: function (detail) {
            $('#coachName').html(detail.coach.name);
            $('#programName').html(detail.ProgramName);
            $('#period').html(detail.startDate +" ~ "+ detail.endDate);
            $('#plan').html(detail.plan);
            if (detail.files.length>0) {
            	if(detail.files[0].fileType == 'image') {
            		$('#calendarDetail img').show();
            		$('#calendarDetail img').attr('src', imagePath+detail.files[0].path);
            	}
            } else {
            	$('#calendarDetail img').hide();
            }
            $('#calendarDetail input[name="calendarNo"]').val(detail.no);
            $('#coachName, #programName, #period').css('font-size', '20px');
            $('#calendarDetail').modal('show');
            }
        });
    }
  })
  var imagePath = $('#calendarDetail img').attr('src');
  
  calendar.startDate=null;
  calendar.endDate=null;
  calendar.setOption('height', 800);
  $.ajax({
    type: "GET",
    url: "planList",
    processData: false,
    contentType: false,
    dataType: "json",
    cache: false,
    timeout: 600000,
    success: function (data) {
      for (var d of data) {
        calendar.addEvent({
          title: '운동계획 업데이트!',
          start: d.startDate,
          end: moment(d.endDate).add('1', 'days').format('YYYY-MM-DD'),
          description: '운동 계획',
          planNo: d.no
        });
      }
    }    
  });
  calendar.render();
});

$('#calendarDetail').on('hidden.bs.modal', function (e) {
  $('#calendarDetail .modal-body div').html("");
});

$('#calendarAddSubmit').on('click', function(e) {
  var form = $('#calendarAddFormForm')[0];
  var data = new FormData(form);
  data.delete('files'); // <-files라는 name이 왜있는지 모르겠다 이거때문에 자꾸 ajax 전송 오류남
  $.ajax({
    type: "POST",
    enctype: 'multipart/form-data',
    url: "add",
    data: data,
    processData: false,
    contentType: false,
    cache: false,
    timeout: 600000,
    success: function (data) {
        Swal.fire({
          title: '등록완료!',
          text: '등록했습니다.',
          icon: 'success',
          confirmButtonText: '확인'
        }).then(() => {
          location.href = 'list';
          })
        },
    error: function (e) {
      Swal.fire({
        title: '저런!',
        text: '다시 시도해주세요',
        icon: 'error',
        confirmButtonText: '확인'
        })
      }
  });
})

$('#calendarDelete').on('click', function(e) {
  Swal.fire({
    title: '정말 삭제하시겠어요?',
    text: "삭제하시면 복구가 불가능합니다!",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    cancelButtonText: '삭제취소',
    confirmButtonText: '삭제할래요.'
  }).then((result) => {
    if (result.value) {
      var no = $('#calendarDetail input[name="calendarNo"]').val();
      $.ajax({
            type: "POST",
            url: "delete",
            data: {
              no:no
            },
            cache: false,
            timeout: 600000,
            success: function (data) {
                Swal.fire({
                  title: '삭제완료!',
                  text: '삭제했습니다.',
                  icon: 'success',
                  confirmButtonText: '확인'
                }).then(() => {
                  location.href = 'list';
                  })
                },
            error: function (e) {
              Swal.fire({
                title: '아이고...',
                text: '뭔가 잘 안됐어요. 다시 시도해주세요.',
                icon: 'error',
                confirmButtonText: '확인'
                })
              }
           })
         }
      });
});

