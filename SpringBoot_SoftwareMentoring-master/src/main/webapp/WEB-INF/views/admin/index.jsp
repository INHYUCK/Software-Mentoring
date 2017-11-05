<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Page</title>

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
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/admin1kil.css">
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/admin1uk.css">

  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700|Acme' rel='stylesheet' type='text/css'>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script type="text/javascript" src="${R}res/js_main/jquery.1.11.1.js"></script>
  <script type="text/javascript" src="${R}res/js_main/bootstrap.js"></script>
  <script type="text/javascript" src="${R}res/js_main/SmoothScroll.js"></script>
  <script type="text/javascript" src="${R}res/js_main/jasny-bootstrap.min.js"></script>
  <script src="${R}res/js_main/owl.carousel.js"></script>
  <script src="${R}res/js_main/typed.js"></script>
  <script type="text/javascript" src="${R}res/js_main/main.js"></script>
  <script type="text/javascript" src="${R}res/js_main/modernizr.custom.js"></script>
  <script type="text/javascript" src="${R}res/js_main/admin1hyuk.js"></script>
  
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
			<li><a href="${R}user/logout_processing" class="page-scroll">로그아웃</a></li>
		  	<li><a href="${R}user/index" class="page-scroll">Home</a></li>
		  	
		  	<li><a href="" class="page-scroll">공지사항</a></li>
		  	<c:if test="${ adminoption.metorActive != 1 }"><li><a href="" class="page-scroll">멘토 신청</a></li></c:if>
		  	<c:if test="${ adminoption.metorActive == 1 }"><li><a href="" class="page-scroll">멘티 신청</a></li></c:if>
		  	<li><a href="" class="page-scroll">멘토방</a></li>
		  	<li><a href="" class="page-scroll">문의사항</a></li>
		  	<c:if test="${ adminoption.metorActive == 1 }"><li><a href="" class="page-scroll">설문조사</a></li></c:if>
		  	<li><a href="" class="page-scroll">My Page</a></li>
		  	<li><a href="" class="page-scroll">관리자 멘토방</a></li>
		  	
		  	<li><a href="${R}admin/index" class="page-scroll">관리자 페이지</a></li>
		  	<!--- End Menu -->
		</ul>
</div>
<!--- End Off Canvas Side Menu -->

    <!-- Home Section -->
    <div id="home">
        <div class="container">
          <!-- 메뉴바 -->
	      <nav id="menu" data-toggle="offcanvas" data-target=".navmenu">
	        <span class="fa fa-bars"></span>
	      </nav>

            <ul class="nav nav-tabs">
                <li class="active"><a href="#first" style="color: white;">전체 회원</a></li>
                <li><a href="#second" style="color: white;">보고서</a></li>
                <li><a href="#third" style="color: white;">설문조사 수정</a></li>
                <li><a href="#fourth" style="color: white;">설문조사 결과</a></li>
                <li><a href="#five" style="color: white;">게시판 설정</a></li>
            </ul>

            <div class="tab-content">
                <!-- 첫번째 탭 -->
                <div class="tab-pane fade active in" id="first">
                    <br>
                    <table class="table">
                        <thead>
                            <tr> 
                                <th>#</th>
                                <th>학번</th>
                                <th>이름</th>
                                <th>학년</th>
                                <th>학과</th>
                                <th>권한</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="student" items="${ stdList }">
                        	<tr>
                        		<td>${ student.id }</td>
                        		<td>${ student.user.userId }</td>
                        		<td>${ student.user.name }</td>
                        		<td>${ student.grade }</td>
                        		<td>${ student.department.depName }</td>
                        		<td>  	 
	                        		<input type="radio" name="${student.id}" value="1" ${ student.user.authority == 1 ? "checked=checked" : "" }> 멘토 
									<input type="radio" name="${student.id}" value="2" ${ student.user.authority == 2 ? "checked=checked" : "" }> 멘티 
									<input type="radio" name="${student.id}" value="3" ${ student.user.authority == 3 ? "checked=checked" : "" }> 관리자 
								</td>                    		
                        	</tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    
                    <center>
                        <div class="input-group" style="width: 30%;">
                            <div class="input-group-btn search-panel">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                <span id="search_concept">필터</span> <span class="caret"></span>
                            </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">학번</a></li>
                                    <li><a href="#">학년</a></li>
                                    <li><a href="#">학과</a></li>
                                    <li><a href="#">권한</a></li>
                                    <li><a href="#">All</a></li>
                                </ul>
                            </div>
                            <input type="hidden" name="search_param" value="all" id="search_param">
                            <input type="text" class="form-control" name="x" placeholder="Search Bar">
                            <span class="input-group-btn">
                            <button class="btn btn-primary" type="button">검색</button>
                        </span>
                        </div>
                        <button type="submit" class="btn btn-primary" style="float: right;">변경 내용 저장</button>
                    </center>
                    
                </div>

                <div class="tab-pane fade" id="second">
                    <br>
                    <!-- 두번째 탭 -->
                    <div class="tab-pane fade active in" id="second">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="allCheck" value="">All
                                    </label>
                                    </th>
                                    <th>날짜</th>
                                    <th>학번</th>
                                    <th>이름</th>
                                    <th>학년</th>
                                    <th>학과</th>
                                    <th>보고서</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170901</td>
                                    <td>201100000</td>
                                    <td>조민국</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170908</td>
                                    <td>201100000</td>
                                    <td>조민국</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170908</td>
                                    <td>201200000</td>
                                    <td>최인혁</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170908</td>
                                    <td>201200000</td>
                                    <td>이종석</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170915</td>
                                    <td>201200000</td>
                                    <td>이종석</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="">
                                    </label>
                                    </td>
                                    <td scope="row">170922</td>
                                    <td>201200000</td>
                                    <td>최인혁</td>
                                    <td>3</td>
                                    <td>소프트웨어공학과</td>
                                    <td>
                                        <button type="submit" class="btn btn-primary btn-sm">▼</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <center>
                            <div class="input-group" style="width: 30%;">
                                <div class="input-group-btn search-panel">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    <span id="search_concept">필터</span> <span class="caret"></span>
                                </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">날짜</a></li>
                                        <li><a href="#">학번</a></li>
                                        <li><a href="#">학년</a></li>
                                        <li><a href="#">학과</a></li>
                                        <li><a href="#">All</a></li>
                                    </ul>
                                </div>
                                <input type="hidden" name="search_param" value="all" id="search_param">
                                <input type="text" class="form-control" name="x" placeholder="Search Bar">
                                <span class="input-group-btn">
                                <button class="btn btn-primary" type="button">검색</button>
                            </span>
                            </div>
                        </center>
                        <button type="submit" class="btn btn-primary" style="float: right;">선택 항목 다운로드</button>
                    </div>
                </div>

                <!-- 세번째 탭 -->
                <div class="tab-pane fade" id="third">
                    <br>
                    <!-- 멘토 문항 수정 -->
                    <div>
                        <h3 style="float:left;">&nbsp&nbsp멘토</h3>
                        <br>
                        <button type="button" class="btn btn-info" style="float:left; margin-left:1%;">미리보기</button>
                        <br>
                        <table id="table_mento" class="table">
                            <thead>
                                <td style="width:60%;">문항</td>
                                <td style="width:10%;">답변형식</td>
                                <td style="width:10%;"></td>
                            </thead>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="1. 멘티들이 성실하게 임하였나요?">

                                    <div class="div_option">
                                        <br>
                                        <table id="table_option" style="width:40%; background-color:rgba(255, 255, 255, 0)">
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="보통이다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                        </table>
                                        <button id="addTR_option" style="color:black; margin:2%; float:left;" type="button" class="btn btn-secondary"> 옵션 추가 </button>

                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                              <option value="1">선택</option>
                              <option value="2" selected>객관식</option>
                              <option value="3">주관식</option>
                          </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="2. SM사업이 본인의 학습에 도움이 되었나요?">

                                    <div class="div_option">
                                        <br>
                                        <table id="table_option" style="width:40%; background-color:rgba(255, 255, 255, 0)">
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="보통이다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                        </table>
                                        <button id="addTR_option" style="color:black; margin:2%; float:left;" type="button" class="btn btn-secondary"> 옵션 추가 </button>

                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                                <option value="1">선택</option>
                                <option value="2" selected>객관식</option>
                                <option value="3">주관식</option>
                            </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="3. 프로그램 개선을 위한 의견을 적어주세요.">

                                    <div class="div_option">
                                        <br>
                                        <div class="form-check" style="float:left;">
                                            <label class="form-check-label"><input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>&nbsp단답형</label><br>
                                            <label class="form-check-label"><input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">&nbsp장문형</label></div>
                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                                  <option value="1">선택</option>
                                  <option value="2">객관식</option>
                                  <option value="3" selected>주관식</option>
                              </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>

                        </table>

                        <button id="addTR_mento" style="color:black; float:left; margin-left:3%; margin-bottom:5%;" type="button" class="btn btn-warning"> 질문 추가 </button>
                    </div>

                    <br>
                    <hr align="center" style="border: solid 1.3px #FFFFFF; width:90%; ">

                    <!-- 멘티 문항 수정 -->
                    <div style="padding:3%;">
                        <h3 style="float:left;">&nbsp&nbsp멘티</h3>
                        <br>
                        <button type="button" class="btn btn-info" style="float:left; margin-left:1%;">미리보기</button>
                        <br>
                        <table id="table_mento" class="table">
                            <thead>
                                <td style="width:60%;">문항</td>
                                <td style="width:10%;">답변형식</td>
                                <td style="width:10%;"></td>
                            </thead>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="1. 멘토의 지도 방향이 본인에게 적절했나요?">

                                    <div class="div_option">
                                        <br>
                                        <table id="table_option" style="width:40%; background-color:rgba(255, 255, 255, 0)">
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="보통이다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                        </table>
                                        <button id="addTR_option" style="color:black; margin:2%; float:left;" type="button" class="btn btn-secondary"> 옵션 추가 </button>

                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                                <option value="1">선택</option>
                                <option value="2" selected>객관식</option>
                                <option value="3">주관식</option>
                            </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="2. SM사업이 본인의 학습에 도움이 되었나요?">

                                    <div class="div_option">
                                        <br>
                                        <table id="table_option" style="width:40%; background-color:rgba(255, 255, 255, 0)">
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="아니다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="보통이다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                            <tr>
                                                <td><input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                        value="option1"></td>
                                                <td><input type="text" class="form-control" id="formGroupExampleInput" placeholder="옵션명"
                                                        value="매우 그렇다" style="margin:2%;"></td>
                                                <td style="vertical-align: middle;"><span> &nbsp&nbsp 삭제 </span></td>
                                            </tr>
                                        </table>
                                        <button id="addTR_option" style="color:black; margin:2%; float:left;" type="button" class="btn btn-secondary"> 옵션 추가 </button>

                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                                  <option value="1">선택</option>
                                  <option value="2" selected>객관식</option>
                                  <option value="3">주관식</option>
                              </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" id="formGroupExampleInput" value="3. 프로그램 개선을 위한 의견을 적어주세요.">

                                    <div class="div_option">
                                        <br>
                                        <div class="form-check" style="float:left;">
                                            <label class="form-check-label"><input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>&nbsp단답형</label><br>
                                            <label class="form-check-label"><input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">&nbsp장문형</label></div>
                                    </div>

                                </td>
                                <td style="vertical-align: top;">
                                    <select class="form-control" id="changeBox" style="color:black; ">
                                    <option value="1">선택</option>
                                    <option value="2">객관식</option>
                                    <option value="3" selected>주관식</option>
                                </select>
                                </td>
                                <td style="vertical-align: top; padding-top:1.7%;"><span> 항목 삭제 </span></td>
                            </tr>

                        </table>

                        <button id="addTR_mento" style="color:black; float:left; margin-left:3%;" type="button" class="btn btn-warning"> 질문 추가 </button>
                    </div>
                    <br>
                    <hr align="center" style="border: solid 1.3px #FFFFFF; width:90%; ">
                    <center>
                        <div class="btn-group" role="group" aria-label="Basic example" style="padding-bottom: 20%">
                            <button type="button" class="btn btn-secondary" style="color: black">등록</button>
                            <button type="button" class="btn btn-secondary" style="color: black">초기화</button>
                            <button type="button" class="btn btn-secondary" style="color: black">취소</button>
                        </div>
                    </center>

                </div>

                <!-- 네번째 탭 -->
                <div class="tab-pane fade" id="fourth">
                    <br>
                    <div>
                        <button type="button" class="btn btn-info" style="color: white; float: right;">내려받기</button>


                        <select class="form-control" id="" style="color:black; float: left; width:20%; margin-bottom:1%;">
                      <option value="1">지난학기 설문조사</option>
                      <option value="2">2017-1</option>
                      <option value="3">2016-2</option>
                      <option value="3">2016-1</option>
                    </select>
                        <table class="table table-bordered" style=" width: 100%;">
                            <thead>
                                <td style="width:20%;"></td>
                                <td style="width:40%;">멘토</td>
                                <td style="width:40%;">멘티</td>
                            </thead>
                            <tr>
                                <td>총인원</td>
                                <td>7</td>
                                <td>27</td>
                            </tr>
                            <tr>
                                <td>응답인원</td>
                                <td>5</td>
                                <td>24</td>
                            </tr>
                            <tr>
                                <td>응답률</td>
                                <td>71%</td>
                                <td>88%</td>
                            </tr>
                        </table>

                        <div>
                            <!-- 멘토 결과!!!!!!!!!!!!!!!!!! -->
                            <h3 style="float:left;">&nbsp&nbsp멘토</h3>
                        </div>
                        <br><br>
                        <div style="margin:3%;">
                            <span style="float:left;">1. 멘티들이 성실하게 임하였나요?</span>
                            <br>
                            <div class="vGraph" style="width:100%;">
                                <ul>
                                    <li><span class="gTerm">매우아니다</span><span class="gBar" style="height:0%"><span>0</span></span>
                                    </li>
                                    <li><span class="gTerm">아니다</span><span class="gBar" style="height:14%"><span>1</span></span>
                                    </li>
                                    <li><span class="gTerm">보통이다</span><span class="gBar" style="height:28%"><span>2</span></span>
                                    </li>
                                    <li><span class="gTerm">그렇다</span><span class="gBar" style="height:42%"><span>3</span></span>
                                    </li>
                                    <li><span class="gTerm">매우 그렇다</span><span class="gBar" style="height:14%"><span>1</span></span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <br><br>
                        <div style="margin:3%;">
                            <span style="float:left;">2. SM사업이 본인의 학습에 도움이 되었나요?</span>
                            <br>
                            <div class="vGraph" style="width:100%;">
                                <ul>
                                    <li><span class="gTerm">매우아니다</span><span class="gBar" style="height:0%"><span>0</span></span>
                                    </li>
                                    <li><span class="gTerm">아니다</span><span class="gBar" style="height:14%"><span>1</span></span>
                                    </li>
                                    <li><span class="gTerm">보통이다</span><span class="gBar" style="height:14%"><span>1</span></span>
                                    </li>
                                    <li><span class="gTerm">그렇다</span><span class="gBar" style="height:57%"><span>4</span></span>
                                    </li>
                                    <li><span class="gTerm">매우 그렇다</span><span class="gBar" style="height:14%"><span>1</span></span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <br><br>
                        <div style="margin:3%;">
                            <span style="float:left;">3. 프로그램 개선을 위한 의견을 적어주세요.</span>
                            <br><br>
                            <table class="table table-bordered" style="text-align: left;">
                                <tr>
                                    <td>멘티들이 적극적으로 참여해줘서 좋았습니다. 다음학기도 신청하려 합니다!!</td>
                                </tr>
                                <tr>
                                    <td>지원금을 올려주세요!</td>
                                </tr>
                                <tr>
                                    <td>1주정도는 못모여도 봐주세요 ㅠㅠ</td>
                                </tr>
                                <tr>
                                    <td>사진촬영보다 동영상촬영은 어떤가요?</tr>
                                </tr>
                            </table>
                        </div>

                        <hr align="center" style="border: solid 1.3px #FFFFFF; width:90%; margin-top:5%; margin-bottom:5%;">

                        <!-- 멘티 결과!!!!!!!!!!!!!!!!!! -->
                        <h3 style="float:left;">&nbsp&nbsp멘티</h3>
                    </div>
                    <br><br>
                    <div style="margin:3%;">
                        <span style="float:left;">1. 멘토의 지도 방향이 본인에게 적절했나요?</span>
                        <br>
                        <div class="vGraph" style="width:100%;">
                            <ul>
                                <li><span class="gTerm">매우아니다</span><span class="gBar" style="height:3%"><span>1</span></span>
                                </li>
                                <li><span class="gTerm">아니다</span><span class="gBar" style="height:7%"><span>2</span></span>
                                </li>
                                <li><span class="gTerm">보통이다</span><span class="gBar" style="height:25%"><span>7</span></span>
                                </li>
                                <li><span class="gTerm">그렇다</span><span class="gBar" style="height:40%"><span>11</span></span>
                                </li>
                                <li><span class="gTerm">매우 그렇다</span><span class="gBar" style="height:22%"><span>6</span></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br><br>
                    <div style="margin:3%;">
                        <span style="float:left;">2. SM사업이 본인의 학습에 도움이 되었나요?</span>
                        <br>
                        <div class="vGraph" style="width:100%;">
                            <ul>
                                <li><span class="gTerm">매우아니다</span><span class="gBar" style="height:3%"><span>1</span></span>
                                </li>
                                <li><span class="gTerm">아니다</span><span class="gBar" style="height:3%"><span>1</span></span>
                                </li>
                                <li><span class="gTerm">보통이다</span><span class="gBar" style="height:29%"><span>8</span></span>
                                </li>
                                <li><span class="gTerm">그렇다</span><span class="gBar" style="height:44%"><span>12</span></span>
                                </li>
                                <li><span class="gTerm">매우 그렇다</span><span class="gBar" style="height:18%"><span>5</span></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br><br>
                    <div style="margin:3%;">
                        <span style="float:left;">3. 프로그램 개선을 위한 의견을 적어주세요.</span>
                        <br><br>
                        <table class="table table-bordered" style="text-align: left;">
                            <tr>
                                <td>멘토의 수업진행을 따라가기 어려웠습니다ㅠㅠ 다음부터는 좀 더 세분화된 난이도를 미리 공지해주세요</td>
                            </tr>
                            <tr>
                                <td>멘티도 일정 성적 이상이되면 지원금을 주셨으면 좋겠어요</td>
                            </tr>
                            <tr>
                                <td>처음 신청할때 보았던 스터디방향과 많이 달랐습니다. 다음부터는 가급적 동일했으면 합니다.</td>
                            </tr>
                            <tr>
                                <td>동시에 여러 멘토링을 하고 싶어요!</tr>
                            </tr>
                        </table>
                    </div>
                    <hr align="center" style="border: solid 1.3px #FFFFFF; width:90%; margin-top:5%; margin-bottom:5%;">
                </div>
                <!-- 네번째 탭 끝 -->
                <!-- 다섯번째 탭 시작 -->
                <div class="tab-pane fade" id="five">
                    <center>
						<br/>
                    <br/>
                    	멘토신청
						<div class="onoffswitch">
							<input type="checkbox" name="onoffswitch1" class="onoffswitch-checkbox" id="myonoffswitch1" ${ adminoption.metorActive == 1 ? "" : "checked" } /> 
								<label class="onoffswitch-label" for="myonoffswitch1"><span class="onoffswitch-inner"></span></label>
						</div>
						멘티신청
						<div class="onoffswitch">
							<input type="checkbox" name="onoffswitch1" class="onoffswitch-checkbox" id="myonoffswitch2" ${ adminoption.menteeActive != 1 ? "" : "checked" } /> 
								<label class="onoffswitch-label" for="myonoffswitch2"><span class="onoffswitch-inner"></span></label>
						</div>
						설문조사 
						<div class="onoffswitch">
							<input type="checkbox" name="onoffswitch1" class="onoffswitch-checkbox" id="myonoffswitch3" ${ adminoption.surveyActive != 1 ? "" : "checked" } /> 
								<label class="onoffswitch-label" for="myonoffswitch3"><span class="onoffswitch-inner"></span></label>
						</div>
					</center>
                </div>
                <!-- 다섯번째 탭 끝 -->

            </div>
        </div>
    </div>

</body>

</html>