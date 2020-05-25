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

// coachPage nav바 클릭시 li에 불켜지는 기능
  // ajax 아니고 누르면 새로고침되기 때문에 기존에 active class를 가지고 있던 li는 자동으로 초기화 된다
  // => 나중에 ajax로 교체할 때 이전 li에 있는 active class를 없애주는 기능도 넣어야함 
  $("nav-menu li").on("click", function() {
    var url = window.location.href;
    var urlArr = url.split("/");
    var target = urlArr[urlArr.indexOf("myPage")+1];
    var a = document.querySelectorAll(".nav-menu li a");
    for (var i = 0; i < a.length; i++) {
      if(a[i].getAttribute("href").search(target) > 0) {
        var targetLi = a[i].parentElement;
        targetLi.classList.add("active");
      }
    }
  }());
 