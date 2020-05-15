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
      var form = $('.modal .updateForm')[0];
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
  $('#program-title').keyup(function() {
    if($("#program-title").val()){
      $(".title-box p").remove();
    }
  })
  
  $('#program-introduce').keyup(function() {
    if($("#program-introduce").val()){
      $(".introduce-box p").remove();
    }
  })
  
  $('#program-tags').on('click', function() {
    if($("#program-tags .active").length > 0 && $("#program-tags .active").length < 4){
      $("#orogram-tags p").remove();
    }
  })
  
  $('#program-fee').keyup(function() {
    if($("#program-fee").val()){
      $(".fee-box p").remove();
    }
  })

  $('.programAddFormSubmit').on('click', function(e) {
    
    if(!$("#program-title").val()){
      if ($(".title-box").children('p').length < 1) {
        $(".title-box").append('<p style="font-size:15px; color:red;">프로그램명을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#program-introduce").val()){
      if ($(".introduce-box").children('p').length < 1) {
        $(".introduce-box").append('<p style="font-size:15px; color:red;">내용을 입력해주세요<p>');
      }
      return;
    }
    
    if($("#program-tags .active").length < 1 ||$("#program-tags .active").length > 3){
      if ($("#program-tags").children('p').length < 1) {
        $("#program-tags").append('<p style="font-size:15px; color:red;">태그를 1개 이상 3개 이하 선택해주세요<p>');
      }
      return;
    }
    
    if(!$.isNumeric($("#program-fee").val())){
      if ($(".fee-box").children('p').length < 1) {
        $(".fee-box").append('<p style="font-size:15px; color:red;">제대로 된 형식을 입력해주세요<p>');
      }
      return;
    }
    
    if(!$("#program-fee").val()){
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
  
  // 페이징 처리
  $('.coach-table').DataTable();
  
})(jQuery);



