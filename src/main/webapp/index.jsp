<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CoachCoach - Index</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
<link href="./resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
 <link href="./resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="./resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="./resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="./resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="./resources/assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i><a href="mailto:contact@example.com">coach@naver.com</a>
        <i class="icofont-phone phone-icon"></i> +1 5589 55488 55
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.jsp">Coach<span>Coach</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">Home</a></li>
          <li><a href="#about">코치소개</a></li>
          <li><a href="app/program/list">코치찾기</a></li>
             <c:if test="${sessionScope.loginUser eq null}">
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/signup">회원가입</a></li>
          <li><a href="${pageContext.servletContext.contextPath}/app/auth/login" >로그인</a></li>
           </c:if> 
          <li class="drop-down"><a href="">고객센터</a>
            <ul>
              <li><a href="app/serviceCenter/FAQ/list">FAQ</a></li>
              <li class="drop-down"><a href="app/serviceCenter/noticeBoard/list">공지사항</a>
          </li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active">
            <div class="carousel-background"><img src="./resources/assets/img/slide/people-2592247_1920.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animated fadeInDown">Welcome to <span>CoachCoach</span></h2>
                <p class="animated fadeInUp">맞춤형 일대일 코칭시스템</p>
                <a href="#about" class="btn-get-started scrollto animated fadeInUp">More</a>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item">
            <div class="carousel-background"><img src="./resources/assets/img/slide/sports-731506_1920.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animated fadeInDown">장소와 시간에 제약없는 운동</h2>
                <p class="animated fadeInUp">시간과 장소에떄문에 고민이신가요.</p>
                <a href="#about" class="btn-get-started scrollto animated fadeInUp">More</a>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item">
            <div class="carousel-background"><img src="./resources/assets/img/slide/yoga-3053488_1920.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animated fadeInDown">매번 계획만 세우시다가 끝나시나요</h2>
                <p class="animated fadeInUp">매번 다이어트 생각만하고 못하시고 계신가요.</p>
                <a href="#about" class="btn-get-started scrollto animated fadeInUp"> More</a>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ri-arrow-left-line" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ri-arrow-right-line" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row content">
          <div class="col-lg-6">
            <h3>코치코치란?</h3><br>
            <h6>누구나 쉽게 앱으로 관리받는 코칭매칭어플</h6>
            <p>온라인 / 오프라인 일대일 맟춤형 코칭시스템</p>
            <h6>귀차니즘을 이겨내는 운동습관을 위해서 집에서 쉽게 따라하고 짧고 효과적인 운동프로그램</h6>
            <p>전문가들이 직접 제작한 체계적인 운동 커리큘럼</p>
            <p>1.매일 주어지는 체계적인 운동영상</p>
            <p>2.영상 속 카운트에 맟춰 혼자서 운동</p>
            <p>3. 운동 결과를 바타응로 코치와 상담하기</p>
            <h5>의지와 자신감을 만드는 생활습관 성형</h5>
            <h6>본인의 목표와 수강 기간에 맞춘 생관 습관과 식단제공</h6>
            <p>1일 섭취량으로 매일 식단표 제공 </p>
            
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Coach는 건강한 자기관리 습관을 나의 것으로 만들어주는 1:1 PT코칭 프로그램입니다. 
             Coach가 생각하는 제대로 된 PT란- 하면 할수록 자신감을 키워주는 운동입니다. 점점 더 내 모습에 만족하게 되고,
             즐거워지는 운동입니다. 평생 할 수 있는 운동입니다. 
             Coach와 함께, 아름다운 자기관리 습관을 평생 나만의 것으로 만드세요!
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> 진정성과 전문성으로회원님들께 다가가는게 가장 중요</li>
              <li><i class="ri-check-double-line"></i> 방문PT 받고 바디프로필 촬영까지!</li>
              <li><i class="ri-check-double-line"></i> 1:1 레슨이고 제가 필요한 부분을
중점적으로 알려준 점</li>
            </ul>
            <p class="font-italic">
              저와 시간과 장소가 맞는 회원님을 추천해주는
코치코치만의 방식이 굉장히 신선했어요
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= About List Section ======= -->
    <section id="about-list" class="about-list">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1">
            <div class="icon-box mt-5 mt-lg-0">
              <i class="bx bx-receipt"></i>
              <h4>식습관</h4>
              <p>식사와 간식을 기록하고코칭 받아서 식습관 개선하기</p>
            </div>
            <div class="icon-box mt-5">
              <i class="bx bx-cube-alt"></i>
              <h4>운동습관</h4>
              <p>하루 30분 운동 영상으로 효과적으로 홈트하기</p>
            </div>
            <div class="icon-box mt-5">
              <i class="bx bx-images"></i>
              <h4>생활습관</h4>
              <p>작은 실천의 반복으로 일상 속 건강습관 만들기</p>
            </div>
            <div class="icon-box mt-5">
              <i class="bx bx-shield"></i>
              <h4>전문 코치의 개인 맞춤형 피드백</h4>
              <p>1.식사/간식을 기록하고, 나의 패턴 확인하기</p>
              <p>2.기록 결과를 바탕으로 코치와 상담하기</p>
              <p>3.피드백을 반영하여 식습관 개선하기</p>
              
            </div>
          </div>
          <div class="image col-lg-6 order-1 order-lg-2" style='background-image: url("assets/img/about-list-img.jpg");'></div>
        </div>

      </div>
    </section><!-- End About List Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container">

        <div class="text-center title">
          <h3>신규코치</h3>
          <p>신규코치,신규프로그램,신청건수,코치수 등 데이터량 표기</p>
        </div>

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">232</span>
            <p>신규코치</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">21</span>
            <p>신규프로그램</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">1,463</span>
            <p>신청건수</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">15</span>
            <p>코치수</p>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title">
          <span>Services</span>
          <h2>Services</h2>
          <p>코치코치에서 제공하는 서비스</p>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="icon-box">
              <i class="icofont-computer"></i>
              <h4><a href="#">프로그램 등록</a></h4>
              <p>개설된 프로그램 안내</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="icofont-chart-bar-graph"></i>
              <h4><a href="#">나의 운동량</a></h4>
              <p>목표량에 대한 그래프를 확인할 수 있습니다.</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="icofont-image"></i>
              <h4><a href="#">식단확인</a></h4>
              <p>칼로리,소모량 등 식단표를 확인할수 있습니다.</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="icofont-settings"></i>
              <h4><a href="#">프로그램 후기</a></h4>
              <p>프로그램 수강 후 회원님들의 후기</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="icofont-earth"></i>
              <h4><a href="#">지도</a></h4>
              <p>나와 가까운 코치님을 확인할 수 있어요</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="icofont-tasks-alt"></i>
              <h4><a href="#">캘린더</a></h4>
              <p>일정을 확인 할 수 있습니다.</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title">
          <span>식단관리</span>
          <h2>식단관리</h2>
          <p>제공되는 식단을 이미지로 확인 할 수 있어요</p>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">전체</li>
              <li data-filter=".filter-app">아침</li>
              <li data-filter=".filter-card">점심</li>
              <li data-filter=".filter-web">저녁</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 1</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-1.jpg" data-gall="portfolioGallery" class="venobox" title="App 1"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-2.jpg" data-gall="portfolioGallery" class="venobox" title="Web 3"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 2</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-3.jpg" data-gall="portfolioGallery" class="venobox" title="App 2"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 2</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-4.jpg" data-gall="portfolioGallery" class="venobox" title="Card 2"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 2</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-5.jpg" data-gall="portfolioGallery" class="venobox" title="Web 2"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 3</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-6.jpg" data-gall="portfolioGallery" class="venobox" title="App 3"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 1</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-7.jpg" data-gall="portfolioGallery" class="venobox" title="Card 1"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 3</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-8.jpg" data-gall="portfolioGallery" class="venobox" title="Card 3"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="./resources/assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="./resources/assets/img/portfolio/portfolio-9.jpg" data-gall="portfolioGallery" class="venobox" title="Web 3"><i class="ri-add-fill"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="ri-links-fill"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title">
          <span>코치진</span>
          <h2>coach</h2>
          <p>인기있는 코치진</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="./resources/assets/img/team/team-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>즐겁고 효과적인 웨이트</h4>
                <span>즐거운 운동에 최대한의 효과를 선사하는 웨이트 프로그램</span>
                <p>수업 효과: 체형관리, 근력향상, 바른체형</p>
                  <p>수업 지역 : 선택가능</p>
                    <p>수업 가능 시간: 추후공지</p>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="./resources/assets/img/team/team-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>날 위한 운동 습관 시작하기</h4>
                <span>나에게 맞는 건강한 운동 습관을 만들어주는 웨이트 프로그램</span>
                <p>수업 효과: 체형관리, 근력향상, 바른체형</p>
                  <p>수업 지역 : 선택가능</p>
                    <p>수업 가능 시간: 추후공지</p>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="./resources/assets/img/team/team-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>코어 강화와 몸의 균형 잡기</h4>
                <span>코어를 강화해 아름다운 몸의 균형을 잡아주는 필라테스 프로그램</span>
                <p>수업 효과: 체형관리, 근력향상, 바른체형</p>
                  <p>수업 지역 : 선택가능</p>
                    <p>수업 가능 시간: 추후공지</p>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="./resources/assets/img/team/team-4.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>군살은 빼고 바디라인 더하기</h4>
                <span>다양한 동작을 통해 군살을 빼고 아름다운 바디라인을 더하는 필라테스 프로그램</span>
                <p>수업 효과: 체형관리, 근력향상, 바른체형</p>
                  <p>수업 지역 : 선택가능</p>
                    <p>수업 가능 시간: 추후공지</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
            <h3>회원 후기</h3>
            <h4>날 위한 운동 습관 시작하기</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
             수업으로 집에서 거북목 운동했어요!
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>회원 후기</h3>
            <h4>즐겁고 효과적인 웨이트</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
             코치님이 함께 호흡해주셔서 감동받았어요
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
            <h3>회원 후기</h3>
            <h4>군살은 빼고 바디라인 더하기</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              임신 중 할 수 있는 정말 다양한 운동을 배웠어요!
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
            <h3>회원 후기</h3>
            <h4>코어 강화와 몸의 균형 잡기</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              미세먼지 피해서 코치님과 집에서 운동했어요!
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
            <h3>회원 후기</h3>
            <h4>정기 운동 프로그램</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
             헬스장 오가는 시간을 절약할 수 있어서 편하고 좋았어요!
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

        </div>

      </div>
    </section><!-- End Testimonials Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>CoachCoach</h3>
              <p>
               조장:김다혜 <br>
                조원:손동영,신은정,<br>
                정지윤,노기현<br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> coach@naver.com<br>
              </p>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>사이트맵</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#about">코치소개</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="app/program/list">코치찾기</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="app/serviceCenter/FAQ/list">고객센터</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="app/auth/signup">로그인</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="app/auth/login">회원가입</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>coach</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        사업장소재지:서울특별시 서초구 서초4동 강남대로 459 (주)코치코치 | 사업자번호 123-00-00001<br>
        통신판매업신고 제2020-서울강남-11513<br>
        대표이사 엄진영 | 개인정보책임자 엄진영 | 통합약관| 이용약관 | 개인정보 처리방침
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="./resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="./resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="./resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="./resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="./resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="./resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="./resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="./resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="./resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="./resources/assets/js/main.js"></script>

</body>

</html>