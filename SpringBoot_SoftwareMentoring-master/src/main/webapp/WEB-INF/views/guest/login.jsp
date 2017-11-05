<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>

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
  <link rel="stylesheet" type="text/css" href="${R}res/css_main/login.css">

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
	<div id="home">
		<div class="container text-center">

			<div class="content">
				<div class="header-text btn">
					<h1>
						<span id="head-title"></span>
					</h1>
				</div>
				<hr />
			</div>

			<center>
				<div class="form-box">
					<form method="post" action="login_processing">
						<div class="form-group">
							<label>아이디:</label>
							<input type="text" name="userId" class="form-control w200" />
						</div>
						<div class="form-group">
							<label>비밀번호:</label>
							<input type="password" name="passwd" class="form-control w200" />
						</div>
						<hr />
						<div>
							<button type="submit" class="btn btn-primary"> 로그인</button>
						</div>
					</form>
					
					<c:if test="${ param.error != null }">
						<div class="mt5">로그인 실패</div>
					</c:if>
				</div>
			</center>
			
		</div>
	</div>

</body>
</html>
