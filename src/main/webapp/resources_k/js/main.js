/**
* Template Name: iPortfolio - v1.2.1
* Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/
!(function($) {
  "use strict";

  // Hero typed
  if ($('.typed').length) {
    var typed_strings = $(".typed").data('typed-items');
    typed_strings = typed_strings.split(',')
    new Typed('.typed', {
      strings: typed_strings,
      loop: true,
      typeSpeed: 100,
      backSpeed: 50,
      backDelay: 2000
    });
  }

  
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

    // Initiate venobox (lightbox feature used in portofilo)
    $(document).ready(function() {
      $('.venobox').venobox();
    });
  });

  // Testimonials carousel (uses the Owl Carousel library)
  $(".testimonials-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    loop: true,
    responsive: {
      0: {
        items: 1
      },
      768: {
        items: 2
      },
      900: {
        items: 3
      }
    }
  });

  // Portfolio details carousel
  $(".portfolio-details-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    loop: true,
    items: 1
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
  
  
//  $(".go").click(function(){
//    var link = $(this).attr("href");
//    $.ajax(
//        { type: 'get' , 
//          url: link, 
//          success: 
//            function(data) {
//            console.log(link);
//            console.log(data);
//              $("#content").html(data);
//            }
//        });
//  });
  
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
  
  
  
  
 
  
// 공지사항 등록 모달 관련
  $('#board-title').keyup(function() {
    if($("#board-title").val()){
      $(".title-box p").remove();
    }
  })
  
  $('#board-content').keyup(function() {
    if($("#board-title").val()){
      $(".content-box p").remove();
    }
  })

  $('.addFormSubmit').on('click', function(e) {
    if(!$("#board-title").val()){
      if ($(".title-box").children('p').length < 1) {
        $(".title-box").append('<p style="font-size:15px; color:red;">제목을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#board-content").val()){
      if ($(".content-box").children('p').length < 1) {
        $(".content-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
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
    console.log(programNo);
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
  $('.modal').on('hidden.bs.modal', function (e) {
    $(this).find('form')[0].reset();
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
  
  var deleteNoticeButton = $('.delete-notice').children('a, button');
  deleteNoticeButton.on('click', function() {
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
        var form = $('.delete-notice')[0];
        var data = new FormData(form);
        $.ajax({
              type: "POST",
              enctype: 'multipart/form-data',
              url: "delete",
              data: data,
              processData: false,
              contentType: false,
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
  
  // 페이징 처리
  $('.coach-table').DataTable();
  
})(jQuery);



