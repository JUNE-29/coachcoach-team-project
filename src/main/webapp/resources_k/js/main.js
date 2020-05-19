/**
* Template Name: iPortfolio - v1.2.1
* Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/
!(function($) {
  "use strict";

  // 모바일 토글 설정 
  $(document).on('click', '.mobile-nav-toggle', function(e) {
    $('body').toggleClass('mobile-nav-active');
    $('.mobile-nav-toggle i').toggleClass('bx bx-menu');
  });

  $(document).click(function(e) {
    var container = $(".mobile-nav-toggle");
    if (!container.is(e.target) && container.has(e.target).length === 0) {
      if ($('body').hasClass('mobile-nav-active')) {
        $('body').removeClass('mobile-nav-active');
        $('.mobile-nav-toggle i').toggleClass('bx bx-menu');
      }
    }
  });

  // Navigation active state on scroll
//  var nav_sections = $('section');
//  var main_nav = $('.nav-menu, #mobile-nav');

//  $(window).on('scroll', function() {
//    var cur_pos = $(this).scrollTop() + 10;
//
//    nav_sections.each(function() {
//      var top = $(this).offset().top,
//        bottom = top + $(this).outerHeight();
//
//      if (cur_pos >= top && cur_pos <= bottom) {
//        if (cur_pos <= bottom) {
//          main_nav.find('li').removeClass('active');
//        }
//        main_nav.find('a[href="#' + $(this).attr('id') + '"]').parent('li').addClass('active');
//      }
//      if (cur_pos < 200) {
//        $(".nav-menu ul:first li:first").addClass('active');
//      }
//    });
//  });

  // Back to top button
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('.back-to-top').fadeIn('slow');
    } else {
      $('.back-to-top').fadeOut('slow');
    }
  });

  $('.back-to-top').click(function() {
    $('html, body').animate({
      scrollTop: 0
    }, 1500, 'easeInOutExpo');
    return false;
  });

  // Skills section
  $('.skills-content').waypoint(function() {
    $('.progress .progress-bar').each(function() {
      $(this).css("width", $(this).attr("aria-valuenow") + '%');
    });
  }, {
    offset: '80%'
  });

  // Porfolio isotope and filter
  $(window).on('load', function() {
    var portfolioIsotope = $('.portfolio-container').isotope({
      itemSelector: '.portfolio-item',
      layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on('click', function() {
      $("#portfolio-flters li").removeClass('filter-active');
      $(this).addClass('filter-active');

      portfolioIsotope.isotope({
        filter: $(this).data('filter')
      });
    });

// coachPage nav바 클릭시 li에 불켜지는 기능
  // ajax 아니고 누르면 새로고침되기 때문에 기존에 active class를 가지고 있던 li는 자동으로 초기화 된다
  // => 나중에 ajax로 교체할 때 이전 li에 있는 active class를 없애주는 기능도 넣어야함 
  $("nav-menu li").on("click", function() {
    var url = window.location.href;
    var urlArr = url.split("/");
    var target = urlArr[urlArr.indexOf("coachPage")+1];
    var a = document.querySelectorAll(".nav-menu li a");
    for (var i = 0; i < a.length; i++) {
      if(a[i].getAttribute("href").search(target) > 0) {
        var targetLi = a[i].parentElement;
        targetLi.classList.add("active");
      }
    }
  }());
  
  $('#updateCoachProfileSubmit').on('click', function(e) {
    e.preventDefault();
      $('.area textarea').val($('.modal .area .value').html().trim());
      $('.career textarea').val($('.modal .career .value').html().trim());
      $('.certification textarea').val($('.modal .certification .value').html().trim());
      console.log($('.modal .introduce .value').html().trim());
      $('.introduce textarea').val($('.modal .introduce .value').html().trim());
      var form = $('.updateForm')[0];
      var data = new FormData(form);

      $.ajax({
          type: "POST",
          enctype: 'multipart/form-data',
          url: "update",
          data: data,
          processData: false,
          contentType: false,
          cache: false,
          timeout: 600000,
          success: function (data) {
              $('.modal').modal("hide");
              Swal.fire({
                title: '프로필 수정',
                text: '수정했어요!',
                icon: 'success',
                confirmButtonText: '확인'
              }).then(() => {
                location.reload()
              })
          },
          error: function (e) {
              alert("ERROR : ", "수정 실패");
          }
      });
    return false;
  });
  
  
  
  
 
  

  
  // 프로그램 등록 모달 관련
  $('.program-title').keyup(function() {
    if($(".program-title").val()){
      $(".title-box p").remove();
    }
  })
  
  $('.program-introduce').keyup(function() {
    if($(".program-introduce").val()){
      $(".introduce-box p").remove();
    }
  })
  
  $('.program-tags').on('click', function() {
      $(".program-tags p").remove();
  })
  
  $('.program-fee').keyup(function() {
    if($(".program-fee").val()){
      $(".fee-box p").remove();
    }
  })

  $('.programAddFormSubmit').on('click', function(e) {
    if(!$(".program-title").val()){
      if ($(".title-box").children('p').length < 1) {
        $(".title-box").append('<p style="font-size:15px; color:red;">프로그램명을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$(".program-introduce").val()){
      if ($(".introduce-box").children('p').length < 1) {
        $(".introduce-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
      }
      return;
    }
    
    if($(".program-tags .active").length < 1 ||$(".program-tags .active").length > 3){
      if ($(".program-tags").children('p').length < 1) {
        $(".program-tags").append('<p style="font-size:15px; color:red;">태그를 1개 이상 3개 이하 선택해주세요<p>');
      }
      return;
    }
    
    if(!$.isNumeric($(".program-fee").val())){
      if ($(".fee-box").children('p').length < 1) {
        $(".fee-box").append('<p style="font-size:15px; color:red;">제대로 된 형식을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$(".program-fee").val()){
      if ($(".fee-box").children('p').length < 1) {
        $(".fee-box").append('<p style="font-size:15px; color:red;">금액을 입력해주세요<p>');
      }
      return;
    }
    e.preventDefault();
      var form = $('.modal #programAddForm')[0];
      var data = new FormData(form);

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
              $('.modal').modal("hide");
              Swal.fire({
                title: '야호!',
                text: '등록했습니다!',
                icon: 'success',
                confirmButtonText: '확인'
              }).then(() => {
                location.reload()
                }
              )
          },
          error: function (e) {
            Swal.fire({
              title: '아이고...',
              text: '뭔가 잘 안됐어요. 다시 시도해주세요.',
              icon: 'error',
              confirmButtonText: '확인'
              }
            )
          }
      });
    return false;
  });
  
  
  $('#program-table a').on('click', function(e) {
    var programNo = $(this).parent().children('input[name="programNo"]').val();
    $.ajax({
      type: "GET",
      url: "detail",
      data: {
        programNo:programNo
      },
      dataType: "json",
      timeout: 600000,
      success: function (detail) {
        $('#updateProgram input[name="no"]').val(detail.no);
        $('#updateProgram .program-title').val(detail.name);
        $('#updateProgram .program-introduce').val(detail.introduce);
        $('#updateProgram .program-fee').val(detail.fee);
        var tags = $('.program-tags').find('input[name="tags"]');
        for (var i = 0; i < detail.coachingProgramTags.length; i++) {
          for (var tag of tags) {
            if ($(tag).val() == detail.coachingProgramTags[i].tagNo) {
              $(tag).parent().addClass('active');
              $(tag).prop('checked', true);
            }
          }
        }
        var typeObtions = $('#programUpdateForm select[name="coachingType"]').children();
        for (var obtion of typeObtions) {
          if ($(obtion).val() == detail.coachingType) {
            $(obtion).prop('selected', true);
          }
        }
      }
    });
  })
  
  // 모달 close했을때 태그 체크 리셋
  $('#addProgram, #updateProgram').on('hidden.bs.modal', function (e) {
      $('form').each(function(){
        this.reset();
      });
    var tags = $('.program-tags').find('input[name="tags"]');
    for (var tag of tags) {
      $(tag).parent().removeClass(' active');
      $(tag).prop('checked', false);
    }
  });
  
  // 프로그램 수정시
  $('.programUpdateFormSubmit').on('click', function(e) {
    
    if(!$("#updateProgram .program-title").val()){
      if ($("#updateProgram .title-box").children('p').length < 1) {
        $("#updateProgram .title-box").append('<p style="font-size:15px; color:red;">프로그램명을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#updateProgram .program-introduce").val()){
      if ($("#updateProgram .introduce-box").children('p').length < 1) {
        $("#updateProgram .introduce-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
      }
      return;
    }
    
    if($("#updateProgram .program-tags .active").length < 1 ||$("#updateProgram .program-tags .active").length > 3){
      if ($("#updateProgram .program-tags").children('p').length < 1) {
        $("#updateProgram .program-tags").append('<p style="font-size:15px; color:red;">태그를 1개 이상 3개 이하 선택해주세요<p>');
      }
      return;
    }
    
    if(!$.isNumeric($("#updateProgram .program-fee").val())){
      if ($("#updateProgram .fee-box").children('p').length < 1) {
        $("#updateProgram .fee-box").append('<p style="font-size:15px; color:red;">제대로 된 형식을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#updateProgram .program-fee").val()){
      if ($("#updateProgram .fee-box").children('p').length < 1) {
        $("#updateProgram .fee-box").append('<p style="font-size:15px; color:red;">금액을 입력해주세요<p>');
      }
      return;
    }
    e.preventDefault();
      var form = $('.modal #programUpdateForm')[0];
      var data = new FormData(form);
      console.log(data);
      $.ajax({
          type: "POST",
          enctype: 'multipart/form-data',
          url: "update",
          data: data,
          processData: false,
          contentType: false,
          cache: false,
          timeout: 600000,
          success: function (data) {
              $('.modal').modal("hide");
              Swal.fire({
                title: '영차',
                text: '수정했습니다!',
                icon: 'success',
                confirmButtonText: '확인'
              }).then(() => {
                location.reload()
                }
              )
          },
          error: function (e) {
            Swal.fire({
              title: '아이고...',
              text: '뭔가 잘 안됐어요. 다시 시도해주세요.',
              icon: 'error',
              confirmButtonText: '확인'
              }
            )
          }
      });
    return false;
  });
  
  // 프로그램 삭제시
  var deleteButton = $('.programDeleteFormSubmit');
  deleteButton.on('click', function() {
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
		          type: "POST",
		          enctype: 'multipart/form-data',
		          url: "delete",
		          data: {
		            "no":$('#programUpdateForm input[name="no"]').val()
		          },
		          cache: false,
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
		              title: '프로그램에 등록된 회원이 있는지 확인해주세요.',
		              text: '프로그램에 아직 등록된 회원이 있다면 삭제하실 수 없어요.',
		              icon: 'error',
		              confirmButtonText: '확인'
		              })
		            }
			       })
		       }
	      })
     })
  
     
  // 
     // 공지사항 등록 모달 관련
  $('#addNoticeBoard .board-title').keyup(function() {
    if($("#addNoticeBoard .board-title").val()){
      $("#addNoticeBoard .title-box p").remove();
    }
  })
  
  $('#addNoticeBoard .summernote').keyup(function() {
    if($("#addNoticeBoard .summernote").summernote('code')){
      $("#addNoticeBoard .content-box p").remove();
    }
  })

  $('.addFormSubmit').on('click', function(e) {
    if(!$("#addNoticeBoard .board-title").val()){
      if ($("#addNoticeBoard .title-box").children('p').length < 1) {
        $("#addNoticeBoard .title-box").append('<p style="font-size:15px; color:red;">제목을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#addNoticeBoard .summernote").summernote('code')){
      if ($("#addNoticeBoard .content-box").children('p').length < 1) {
        $("#addNoticeBoard .content-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
      }
      return;
    } 
    e.preventDefault();
      var form = $('.modal #addForm')[0];
      var data = new FormData(form);

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
              $('.modal').modal("hide");
              Swal.fire({
                title: '야호!',
                text: '등록했습니다!',
                icon: 'success',
                confirmButtonText: '확인'
              }).then(() => {
                location.reload()
                }
              )
          },
          error: function (e) {
            Swal.fire({
              title: '아이고...',
              text: '뭔가 잘 안됐어요. 다시 시도해주세요.',
              icon: 'error',
              confirmButtonText: '확인'
              }
            )
          }
      });
    return false;
  });
  
  

  $('#notice-table a').on('click', function() {
    var no = $(this).parent().children('input[name="no"]').val();
    $.ajax({
      type: "GET",
      url: "detail",
      data: {
        no:no
      },
      dataType: "json",
      timeout: 600000,
      success: function (detail) {
        $('#updateNoticeBoard input[name="no"]').val(detail.no);
        $('#updateNoticeBoard .program-name').append("<span>"+detail.programName+"</span>");
        $('#updateNoticeBoard .update-date').append("<span>"+detail.createdDate+"</span>");
        for (var member of detail.members) {
          $('#updateNoticeBoard .members-name').append("<span>"+member.name+"님 "+"</span>");
        }
        $('.board-title').val(detail.title);
        $("#updateNoticeBoard .summernote").summernote("code", detail.content);
      }
    });
  })
  
    $('#updateNoticeBoard .board-title').keyup(function() {
    if($("#updateNoticeBoard .board-title").val()){
      $("#updateNoticeBoard .title-box p").remove();
    }
  })
  
  $('#updateNoticeBoard .board-content').keyup(function() {
    if($("#updateNoticeBoard .board-content").val()){
      $("#updateNoticeBoard .content-box p").remove();
    }
  })
  
  $('.updateNoticeSubmit').on('click', function() {
    if(!$("#updateNoticeBoard .board-title").val()){
      if ($("#updateNoticeBoard .title-box").children('p').length < 1) {
        $("#updateNoticeBoard .title-box").append('<p style="font-size:15px; color:red;">제목을 입력해주세요<p>');
      }
      return;
    }
    
    console.log($("#updateNoticeBoard .summernote").summernote('code'));
    if(!$("#updateNoticeBoard .summernote").summernote('code')){
      if ($("#updateNoticeBoard .content-box").children('p').length < 1) {
        $("#updateNoticeBoard .content-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
      }
      return;
    } 
    
    var no = $('#updateNoticeBoard input[name="no"]').val();
    $.ajax({
      type: "POST",
      enctype: 'multipart/form-data',
      url: "update",
      data: {
        no:no,
        content:$("#updateNoticeBoard .summernote").summernote('code'),
        title:$("#updateNoticeBoard .board-title").val()
      },
      enctype: 'multipart/form-data',
      cache: false,
      timeout: 600000,
      success: function (data) {
          Swal.fire({
            title: '수정 완료!',
            text: '수정했습니다.',
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
   })
  
  $('.deleteNoticeSubmit').on('click', function() {
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
        var no = $('#updateNoticeBoard input[name="no"]').val();
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
        })
     })
     
  // 모달 close했을때 데이터 리셋
  $('#updateNoticeBoard, #addNoticeBoard').on('hidden.bs.modal', function (e) {
    $('form').each(function(){
      this.reset();
    });
    $(this).find('.program-name span, .update-date span, .members-name span').remove();
    $("#updateNoticeBoard .title-box p, #addNoticeBoard .title-box p").remove();
    $("#updateNoticeBoard .content-box p, #addNoticeBoard .content-box p").remove();
  });
  
  // 페이징 처리
  $('.coach-table').DataTable();
  
  // 서머노트 에디터
  $('.summernote').summernote({
    height: 300,                 // 에디터 높이
    minHeight: null,             // 최소 높이
    maxHeight: null,             // 최대 높이
    focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
    lang: "ko-KR",          // 한글 설정
    placeholder: '최대 21,844자까지 쓸 수 있습니다'  //placeholder 설정
  });
  
  
  // 받은 요청 모달 처리
  $('.request-table a').on('click', function() {
    var no = $(this).children('input[name="no"]').val();
    $.ajax({
      type: "GET",
      url: "detail",
      data: {
        no:no
      },
      dataType: "json",
      cache: false,
      timeout: 600000,
      success: function (detail) {
        if(detail.member.photo.length > 0) {
          $('#requestDetail img').attr('src', $('#requestDetail img').attr('src')+detail.member.photo)
        } else {
          $('#requestDetail img').attr('src', $('#requestDetail img').attr('src')+'default.jpg')
        }
        $('#requestDetail td.name').text(detail.member.name)
        $('#requestDetail td.id').text(detail.member.id)
        $('#requestDetail td.tel').text(detail.member.tel)
        $('#requestDetail td.email').text(detail.member.email)
        $('#requestDetail td.birth').text(detail.member.birth)
        $('#requestDetail td.programName').text(detail.programName)
        $('#requestDetail td.requestDate').text(detail.requestDate)
        $('#requestDetail td.startDate').text(detail.startDate)
        $('#requestDetail td.remark').text(detail.remark)
        $('#requestDetail input[name="memberCoachingProgramNo"]').val(detail.no)
        if(detail.status != "요청대기중") {
          $('#requestDetail .modal-footer button').hide('button');
        } else if(detail.status == "요청대기중") {
          $('#requestDetail .modal-footer button').show('button');
        }
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
  })
  
  $('#requestAccept').on('click', function() {
    var memberCoachingProgramNo = $('#requestDetail input[name="memberCoachingProgramNo"]').val();
        Swal.fire({
          title: '수락 확인',
          text: "수락하시겠어요?",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText:'잠시만요!',
          confirmButtonText: '수락!'
        }).then((result) => {
          if (result.value) {
            $.ajax({
                  type: "POST",
                  enctype: 'multipart/form-data',
                  url: "accept",
                  data: {
                    memberCoachingProgramNo:memberCoachingProgramNo
                  },
                  cache: false,
                  success: function (data) {
                      Swal.fire({
                        title: '수락완료!',
                        text: '수락했습니다.',
                        icon: 'success',
                        confirmButtonText: '확인'
                      }).then(() => {
                        location.reload()
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
      })
  })
  
  $('#requestRejectSubmit').on('click', function() {
    $(this).closest('.modal').find('input[name="memberCoachingProgramNo"]').val(
        $('#requestDetail input[name="memberCoachingProgramNo"]').val());
        Swal.fire({
          title: '거절 확인',
          text: "정말 거절하시겠어요?",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText:'잠시만요!',
          confirmButtonText: '거절'
        }).then((result) => {
          if (result.value) {
            $.ajax({
                  type: "POST",
                  enctype: 'multipart/form-data',
                  url: "reject",
                  data: {
                    memberCoachingProgramNo : $('#requestDetail input[name="memberCoachingProgramNo"]').val(),
                    content: $('#requestReject textarea').val()
                  },
                  cache: false,
                  success: function (data) {
                      Swal.fire({
                        title: '거절완료!',
                        text: '거절했습니다.',
                        icon: 'success',
                        confirmButtonText: '확인'
                      }).then(() => {
                        location.reload()
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
      })
  })
  
  $('#requestReject, #requestDetail').on('hidden.bs.modal', function (e) {
    $('form').each(function(){
      this.reset();
    });
  });
  
//회원 디티일보기 모달 처리
  $('.member-table a').on('click', function() {
    var no = $('.member-table').find('input[name="memberCoachingProgramNo"]').val();
    $.ajax({
      type: "GET",
      url: "detail",
      data: {
        no:no
      },
      dataType: "json",
      cache: false,
      timeout: 600000,
      success: function (detail) {
        if(detail.member.photo.length > 0) {
          $('#memberDetail img').attr('src', $('#memberDetail img').attr('src')+detail.member.photo)
        } else {
          $('#memberDetail img').attr('src', $('#memberDetail img').attr('src')+'default.jpg')
        }
        $('#memberDetail td.name').text(detail.member.name)
        $('#memberDetail td.id').text(detail.member.id)
        $('#memberDetail td.tel').text(detail.member.tel)
        $('#memberDetail td.email').text(detail.member.email)
        $('#memberDetail td.birth').text(detail.member.birth)
        $('#memberDetail td.programName').text(detail.programName)
        $('#memberDetail td.requestDate').text(detail.requestDate)
        $('#memberDetail td.startDate').text(detail.startDate)
        $('#memberDetail td.remark').text(detail.remark)
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
  })
  
  })
})(jQuery);



