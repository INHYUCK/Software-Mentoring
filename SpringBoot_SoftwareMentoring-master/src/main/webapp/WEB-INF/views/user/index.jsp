<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Software Mentoring</title>

  <!-- Favicons
    ================================================== -->
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
  
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="${R}res/font-awesome-4.2.0_main/css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/jasny-bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/animate.css">
  <link href="${R}res/css_main/owl.carousel.css" rel="stylesheet" media="screen">
  <link href="${R}res/css_main/owl.theme.css" rel="stylesheet" media="screen">
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/style.css">
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/responsive.css">

  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700|Acme' rel='stylesheet' type='text/css'>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script type="text/javascript" src="${R}res/js_main/jquery.1.11.1.js"></script>
  <script type="text/javascript" src="${R}res/js_main/bootstrap.js"></script>
  <script type="text/javascript" src="${R}res/js_main/SmoothScroll.js"></script>
  <script type="text/javascript" src="${R}res/js_main/jasny-bootstrap.min.js"></script>
  <script src="${R}res/js_main/owl.carousel.js"></script>
  <script src="${R}res/js_main/typed.js"></script>
  <script type="text/javascript" src="${R}res/js_main/main.js"></script>
  <script type="text/javascript" src="${R}res/js_main/index.js"></script>
  <script type="text/javascript" src="${R}res/js_main/modernizr.custom.js"></script>
</head>

<body>
<!--- Off Canvas Side Menu -->
<div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
	<div class="close" data-toggle="offcanvas" data-target=".navmenu">
		<span class="fa fa-close"></span>
	</div>
	<div class="add-margin"></div>
		<ul class="nav navmenu-nav">
		  	<!--- Menu -->
			<li style="color: orange; font-size: 14pt"><sec:authentication property="user.name" /></li>
			<li><a href="logout_processing" class="page-scroll">로그아웃</a></li>
		  	<li><a href="${R}user/index" class="page-scroll">Home</a></li>
		  	
		  	<li><a href="" class="page-scroll">공지사항</a></li>
		  	<li><a href="" class="page-scroll">멘토 신청</a></li>
		  	<li><a href="" class="page-scroll">멘티 신청</a></li>
		  	<li><a href="" class="page-scroll">멘토방</a></li>
		  	<li><a href="" class="page-scroll">문의사항</a></li>
		  	<li><a href="" class="page-scroll">설문조사</a></li>
		  	<li><a href="" class="page-scroll">My Page</a></li>
		  	<li><a href="" class="page-scroll">관리자 멘토방</a></li>
		  	<li><a href="${R}admin/index" class="page-scroll">관리자 페이지</a></li>
		  	<!--- End Menu -->
		</ul>
</div>
<!--- End Off Canvas Side Menu -->

  <div id="home">
    <div class="container text-center">
    
      <!-- 메뉴바 -->
      <nav id="menu" data-toggle="offcanvas" data-target=".navmenu">
        <span class="fa fa-bars"></span>
      </nav>
      
      <div class="content">
        <h4>M e n t o r & M e n t e e</h4>
        <hr>
        <div class="header-text btn">
          <h1><span id="head-title"></span></h1>
        </div>
      </div>
      </br>
    </div>
  </div>

  <!-- Services Section -->
  <div id="services">
    <div class="container text-center">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="section-title">
            <h2>SM 사업</h2>
            <hr>
          </div>
          <p>소프트웨어공학과 멘토링 사업이라는 말로 성공회대 소프트웨어공학과 내에서
            <br/>선후배 간의 지식 공유가 이루어지는 것을 말한다.</p>
        </div>
      </div>

      <div class="space"></div>

      <div class="row">
        <div class="col-md-4 col-sm-4">
          <div class="service">
            <span class="fa fa-pencil fa-3x"></span>
            <h3>멘토 기준</h3>
            <p>(1)<br/>C언어, Java, DB, 이산수학 등 학과 강의의 경우 해당 과목 성적이 B+ 이상</p>
            <p>(2)<br/>그 외의 주제의 경우 본인이 전문 지식을 가르칠 수준이라는 것을 증빙할 수 있는 자료(활동 자료 등)이 필요하다.</p>
            <p>*지정된 주제 이외에도 선택할 수 있지만, 스터디라는 명목에서 벗어난다고 판단될 경우 멘토에서 제외한다.</p>
            <p></p>
          </div>
        </div>

        <div class="col-md-4 col-sm-4">
          <div class="service">
            <span class="fa fa-book fa-3x"></span>
            <h3>팀 선별 및 필수 요건</h3>
            <p>멘토가 팀별 주제 계획을 계획서에 작성해 증명자료와 함께 제출한다.</p>
            <p>학생회에서 멘토 계획서를 검토 후 멘토를 선정한다.</p>
            <p>멘티들이 선착순으로 배우고 싶은 멘토에게 신청한다.</p>
            <p>(1)팀별 중간 보고서<br/> (2)팀별 최종 보고서<br/> (3)활동 기간 내의 주별 인증샷<br/> (1),(2),(3)은 필수 요건이다.</p>
          </div>
        </div>

        <div class="col-md-4 col-sm-4">
          <div class="service">
            <span class="fa fa-krw fa-3x"></span>
            <h3>장학금</h3>
            <p>팀별 중간 보고서 이후 1차 장학금을 지급한다.</p>
            <p>팀별 최종 보고성 이후 활동한 내역, 인증샷 등을 참고하여 2차 장학금을 지급한다.</p>
            <p>*활동 내역 중 인증샷이 없을 경우 무효로 처리한다.</p>
            <p>*인증샷은 멘토, 멘티가 모두 포함되어 있어야 하며 불가피한 사유가 있을 경우 인증샷에 없더라도 인정한다.</p>
          </div>
        </div>
      </div>

      <p></p>

      <!-- Mentor modal 1 -->
      <a data-toggle="modal" data-target="#myModal1" style="cursor:pointer">
                <button type="button" class="btn btn-outline-primary">더 자세히 알아보기</button>
            </a>
      <!-- Modal -->
      <div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h3 class="modal-title" id="myModalLabel">SM 사업 일정</h3>
            </div>
            <!-- SM 사업 설명 들어갈 부분 -->
            <div class="modal-body">
              <h3>8 / 28 (월) ~ 9 / 1 (금)</h3>
              <p style="font-size: 20px;">멘토 신청 기간(2, 3, 4학년)</p><br/>
              <h3>9 / 4 (월) ~ 9 / 8 (금)</h3>
              <p style="font-size: 20px;">1, 2학년 멘티 모집 및 매칭</p><br/>
              <h3>9 / 11 (월) ~ 10 / 13 (금)</h3>
              <p style="font-size: 20px;">1차 활동 기간 (5주, 최소 10시간)</p><br/>
              <h3>10 / 10 (월) ~ 10 / 13 (금)</h3>
              <p style="font-size: 20px;">팀별 중간 보고서 제출 기간</p><br/>
              <h3>10 / 23 (월) ~ 12 / 8 (금)</h3>
              <p style="font-size: 20px;">2차 활동 기간 (7주, 최소 14시간)</p><br/>
              <h3>12 / 4 (월) ~ 12 / 8 (금)</h3>
              <p style="font-size: 20px;">팀별 최종보고서 제출 기간)</p><br/>
              <p>( 1차, 2차 기간 동안 최소 24시간 이상을 채우셔야 합니다. )</p>
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
          </div>
        </div>
      </div>
      <!-- Mentor modal 1 end -->
    </div>
  </div>


  <nav id="footer">
    <div class="container">
      <div class="pull-left">
        <p>2017 © SKHU SW. All Rights Reserved.</p>
      </div>
      <div class="pull-right">
        <a href="#home" class="page-scroll">Back to Top <span class="fa fa-angle-up"></span></a>
      </div>
    </div>
  </nav>
  
</body>
</html>
