<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
<meta name="author" content="themefisher.com">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
body {
	font-family: "Exo", sans-serif;
	/* 'Varela Round', sans-serif*/
}

.form-control {
	box-shadow: none;
	font-weight: normal;
	font-size: 13px;
}

.navbar {
	background: #fff;
	padding-left: 16px;
	padding-right: 16px;
	border-bottom: 1px solid #dfe3e8;
	border-radius: 0;
}

.nav-link img {
	border-radius: 50%;
	width: 36px;
	height: 36px;
	margin: -8px 0;
	float: left;
	margin-right: 10px;
}

.navbar .navbar-brand {
	padding-left: 0;
	font-size: 20px;
	padding-right: 50px;
}

.navbar .navbar-brand b {
	color: #223a66; /*#33cabb;*/
}

.navbar .form-inline {
	display: inline-block;
}

.navbar a {
	color: #888;
	font-size: 15px;
}

.search-box {
	position: relative;
}

.search-box input {
	padding-right: 35px;
	border-color: #dfe3e8;
	border-radius: 4px !important;
	box-shadow: none
}

.search-box .input-group-text {
	min-width: 35px;
	border: none;
	background: transparent;
	position: absolute;
	right: 0;
	z-index: 9;
	padding: 7px;
	height: 100%;
}

.search-box i {
	color: #a0a5b1;
	font-size: 19px;
}

.navbar .sign-up-btn {
	min-width: 110px;
	max-height: 36px;
}

.navbar .dropdown-menu {
	color: #999;
	font-weight: normal;
	border-radius: 1px;
	border-color: #e5e5e5;
	box-shadow: 0 2px 8px rgba(0, 0, 0, .05);
}

.navbar a, .navbar a:active {
	color: #888;
	padding: 8px 20px;
	background: transparent;
	line-height: normal;
}

.navbar .navbar-form {
	border: none;
}

.navbar .action-form {
	width: 280px;
	padding: 20px;
	left: auto;
	right: 0;
	font-size: 14px;
}

.navbar .action-form a {
	color: #223a66; /*#33cabb;*/
	padding: 0 !important;
	font-size: 14px;
}

.navbar .action-form .hint-text {
	text-align: center;
	margin-bottom: 15px;
	font-size: 13px;
}

.navbar .btn-primary, .navbar .btn-primary:active {
	color: #fff;
	background: #223a66 !important; /* #33cabb*/
	border: none;
}

.navbar .btn-primary:hover, .navbar .btn-primary:focus {
	color: #fff;
	background: #e12454 !important;
}

.navbar .social-btn .btn, .navbar .social-btn .btn:hover {
	color: #fff;
	margin: 0;
	padding: 0 !important;
	font-size: 13px;
	border: none;
	transition: all 0.4s;
	text-align: center;
	line-height: 34px;
	width: 47%;
	text-decoration: none;
}

.navbar .social-btn .facebook-btn {
	background: #507cc0;
}

.navbar .social-btn .facebook-btn:hover {
	background: #4676bd;
}

.navbar .social-btn .twitter-btn {
	background: #64ccf1;
}

.navbar .social-btn .twitter-btn:hover {
	background: #4ec7ef;
}

.navbar .social-btn .btn i {
	margin-right: 5px;
	font-size: 16px;
	position: relative;
	top: 2px;
}

.or-seperator {
	margin-top: 32px;
	text-align: center;
	border-top: 1px solid #e0e0e0;
}

.or-seperator b {
	color: #666;
	padding: 0 8px;
	width: 30px;
	height: 30px;
	font-size: 13px;
	text-align: center;
	line-height: 26px;
	background: #fff;
	display: inline-block;
	border: 1px solid #e0e0e0;
	border-radius: 50%;
	position: relative;
	top: -15px;
	z-index: 1;
}

.navbar .action-buttons .dropdown-toggle::after {
	display: none;
}

.form-check-label input {
	position: relative;
	top: 1px;
}

@media ( min-width : 1200px) {
	.form-inline .input-group {
		width: 300px;
		margin-left: 30px;
	}
}

@media ( max-width : 768px) {
	.navbar .dropdown-menu.action-form {
		width: 100%;
		padding: 10px 15px;
		background: transparent;
		border: none;
	}
	.navbar .form-inline {
		display: block;
	}
	.navbar .input-group {
		width: 100%;
	}
}
</style>
<title>Doseo Spring framework project</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />

<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">
<!-- Icon Font Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/icofont/icofont.min.css">
<!-- Slick Slider  CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick-theme.css">

<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body id="top">
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a href="#" class="navbar-brand">DOSEO <b>Project</b></a>
			<!-- Brand<b>Name</b> -->
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Collection of nav links, forms, and other content for toggling -->
			<div id="navbarCollapse"
				class="collapse navbar-collapse justify-content-start">
				<div class="navbar-nav">

					<%
					if (session.getAttribute("sessionForUser") == null) {
					%>
					<a href="home" class="nav-item nav-link">Home</a>
					<%
					} else {
					%>
					<a href="login_home" class="nav-item nav-link">Home</a>
					<%
					}
					%>

					<a href="#" class="nav-item nav-link">About</a>
					<div class="nav-item dropdown">
						<a href="#" data-toggle="dropdown"
							class="nav-item nav-link dropdown-toggle">Search</a>
						<div class="dropdown-menu">
							<a href="#" class="dropdown-item">Hospital Search</a> <a href="#"
								class="dropdown-item">Pharmacy Search</a> <a href="#"
								class="dropdown-item">Graphic Design</a> <a href="#"
								class="dropdown-item">Digital Marketing</a>
						</div>
					</div>
					<!-- <a href="#" class="nav-item nav-link active">Pricing</a> -->
					<a href="#" class="nav-item nav-link">Blog</a> <a href="#"
						class="nav-item nav-link">Contact</a>
				</div>
				<form class="navbar-form form-inline">
					<div class="input-group search-box">
						<input type="text" id="search" class="form-control"
							placeholder="Search here...">
						<div class="input-group-append">
							<span class="input-group-text"> <i class="material-icons">&#xE8B6;</i>
							</span>
						</div>
					</div>
				</form>
			</div>
		</nav>
	</header>



	<section class="section testimonial-2 gray-bg">
		<div class="row justify-content-center">
			<div class="col-lg-7">
				<c:choose>
					<c:when test="${join_success}">
						<div class="section-title text-center">
							<h2>Thank you for Singing up!</h2>
							<div class="divider mx-auto my-4"></div>
							<p>login now.</p>
						</div>
					</c:when>
					<c:otherwise>
						<div class="section-title text-center">
							<h2>Login</h2>
							<div class="divider mx-auto my-4"></div>
							<p>login failed. check your id or password.</p>
						</div>
					</c:otherwise>
				</c:choose>
				
			
			</div>
		</div>

		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12 testimonial-wrap-2">
					<div class="testimonial-block style-2  gray-bg">
						<div id="loginMember">
							<form:form modelAttribute="loginMember" action="login">
								<p>fill in the form</p>

								<input type="radio" name="kind_of_user" value="individual"
									checked> Individual 
								<input type="radio" name="kind_of_user" value="enterprise"> Enterprise 
								<input type="radio" name="kind_of_user" value="doctor"> Doctor 

								<div class="form-group">
									<input type="text" name="id" class="form-control"
										placeholder="Username" required="required">
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control"
										placeholder="Password" required="required">
								</div>
								<input type="submit" class="btn btn-primary btn-block"
									value="Login">
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>








	<!-- footer Start -->
	<footer class="footer section gray-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mr-auto col-sm-6">
					<div class="widget mb-5 mb-lg-0">
						<div class="logo mb-4">
							<img
								src="${pageContext.request.contextPath}/resources/images/logo.png"
								alt="" class="img-fluid">
						</div>
						<p>Tempora dolorem voluptatum nam vero assumenda voluptate,
							facilis ad eos obcaecati tenetur veritatis eveniet distinctio
							possimus.</p>

						<ul class="list-inline footer-socials mt-4">
							<li class="list-inline-item"><a
								href="https://www.facebook.com/themefisher"><i
									class="icofont-facebook"></i></a></li>
							<li class="list-inline-item"><a
								href="https://twitter.com/themefisher"><i
									class="icofont-twitter"></i></a></li>
							<li class="list-inline-item"><a
								href="https://www.pinterest.com/themefisher/"><i
									class="icofont-linkedin"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="widget mb-5 mb-lg-0">
						<h4 class="text-capitalize mb-3">Department</h4>
						<div class="divider mb-4"></div>

						<ul class="list-unstyled footer-menu lh-35">
							<li><a href="#">Surgery </a></li>
							<li><a href="#">Wome's Health</a></li>
							<li><a href="#">Radiology</a></li>
							<li><a href="#">Cardioc</a></li>
							<li><a href="#">Medicine</a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="widget mb-5 mb-lg-0">
						<h4 class="text-capitalize mb-3">Support</h4>
						<div class="divider mb-4"></div>

						<ul class="list-unstyled footer-menu lh-35">
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Company Support </a></li>
							<li><a href="#">FAQuestions</a></li>
							<li><a href="#">Company Licence</a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="widget widget-contact mb-5 mb-lg-0">
						<h4 class="text-capitalize mb-3">Get in Touch</h4>
						<div class="divider mb-4"></div>

						<div class="footer-contact-block mb-4">
							<div class="icon d-flex align-items-center">
								<i class="icofont-email mr-3"></i> <span class="h6 mb-0">Support
									Available for 24/7</span>
							</div>
							<h4 class="mt-2">
								<a href="tel:+23-345-67890">Support@email.com</a>
							</h4>
						</div>

						<div class="footer-contact-block">
							<div class="icon d-flex align-items-center">
								<i class="icofont-support mr-3"></i> <span class="h6 mb-0">Mon
									to Fri : 08:30 - 18:00</span>
							</div>
							<h4 class="mt-2">
								<a href="tel:+23-345-67890">+23-456-6588</a>
							</h4>
						</div>
					</div>
				</div>
			</div>

			<div class="footer-btm py-4 mt-5">
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-6">
						<div class="copyright">
							&copy; Copyright Reserved to <span class="text-color">Novena</span>
							by <a href="https://themefisher.com/" target="_blank">Themefisher</a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="subscribe-form text-lg-right mt-5 mt-lg-0">
							<form action="#" class="subscribe">
								<input type="text" class="form-control"
									placeholder="Your Email address"> <a href="#"
									class="btn btn-main-2 btn-round-full">Subscribe</a>
							</form>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-4">
						<a class="backtop js-scroll-trigger" href="#top"> <i
							class="icofont-long-arrow-up"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</footer>



	<!-- 
    Essential Scripts
    =====================================-->


	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.js"></script>
	<!-- Bootstrap 4.3.2 -->
	<script src="plugins/bootstrap/js/popper.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/counterup/jquery.easing.js"></script>
	<!-- Slick Slider -->
	<script src="plugins/slick-carousel/slick/slick.min.js"></script>
	<!-- Counterup -->
	<script src="plugins/counterup/jquery.waypoints.min.js"></script>

	<script src="plugins/shuffle/shuffle.min.js"></script>
	<script src="plugins/counterup/jquery.counterup.min.js"></script>
	<!-- Google Map -->
	<script src="plugins/google-map/map.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>

	<script src="js/script.js"></script>
	<script src="js/contact.js"></script>
</body>
</html>