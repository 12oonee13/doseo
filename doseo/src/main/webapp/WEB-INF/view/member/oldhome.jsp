<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

					<% if (session.getAttribute("sessionForUser")==null) {%>
					<a href="member/home" class="nav-item nav-link">Home</a>
					<%} else {%>
					<a href="login_home" class="nav-item nav-link">Home</a>
					<%} %>
					
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

				<% if (session.getAttribute("sessionForUser")==null) {%>
				<div class="navbar-nav ml-auto action-buttons">
					<form:form modelAttribute="loginMember" action="member/login">
						<div class="nav-item dropdown">
							<a href="#" data-toggle="dropdown"
								class="nav-link dropdown-toggle mr-4">Login</a>
							<div class="dropdown-menu action-form">
								<p class="hint-text">Sign in with your social media account</p>
								<div class="form-group social-btn clearfix">
									<a href="#" class="btn btn-secondary facebook-btn float-left"><i
										class="fa fa-facebook"></i> Facebook</a> <a href="#"
										class="btn btn-secondary twitter-btn float-right"><i
										class="fa fa-twitter"></i> Twitter</a>
								</div>
								<div class="or-seperator">
									<b>or</b>
								</div>
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
								<div class="text-center mt-2">
									<a href="#">Forgot Your password?</a>
								</div>
							</div>
						</div>
					</form:form>

					<form:form modelAttribute="joinMember" action="member/jointest">
						<div class="nav-item dropdown">
							<a href="#" data-toggle="dropdown"
								class="btn btn-primary dropdown-toggle sign-up-btn">Sign up</a>
							<div class="dropdown-menu action-form">
								<p class="hint-text">Fill in this form to create your
									account!</p>
								<div class="form-group">
									<input type="text" name="id" class="form-control"
										placeholder="id" required="required">
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control"
										placeholder="password" required="required">
								</div>
								<div class="form-group">
									<input type="password" name="confirmPassword"
										class="form-control" placeholder="confirmPassword"
										required="required">
								</div>
								<div class="form-group">
									<input type="text" name="name" class="form-control"
										placeholder="name" required="required">
								</div>
								<div class="form-group">
									<input type="text" name="phone" class="form-control"
										placeholder="phone" required="required">
								</div>
								<div class="form-group">
									<input type="text" name="age" class="form-control"
										placeholder="age" required="required">
								</div>
								<div class="form-group">
									<label class="form-check-label"><input type="checkbox"
										required="required"> I accept the <a href="#">Terms
											&amp; Conditions</a></label>
								</div>
								<input type="submit" class="btn btn-primary btn-block"
									value="Sign up">
							</div>
						</div>
					</form:form>
				</div>
				<% } else{ %>
				<div class="navbar-nav">
					<!-- <a href="#" class="nav-item nav-link active">Pricing</a> -->
					<a href="#" class="nav-item nav-link">My Page</a> <a href="logout"
						class="nav-item nav-link">Sign out</a>
				</div>
				<% } %>
			</div>
		</nav>
		<%-- 	<nav class="navbar navbar-expand-lg navigation" id="navbar">
			<div class="container">
				<a class="navbar-brand" href="index.html"> <img
					src="${pageContext.request.contextPath}/resources/images/logo.png"
					alt="" class="img-fluid">
				</a>

				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarmain"
					aria-controls="navbarmain" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="icofont-navigation-menu"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarmain">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
						<li class="nav-item"><a class="nav-link" href="service.html">Services</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="department.html"
							id="dropdown02" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Department <i class="icofont-thin-down"></i></a>
							<ul class="dropdown-menu" aria-labelledby="dropdown02">
								<li><a class="dropdown-item" href="department.html">Departments</a></li>
								<li><a class="dropdown-item" href="department-single.html">Department
										Single</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="doctor.html"
							id="dropdown03" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Doctors <i class="icofont-thin-down"></i></a>
							<ul class="dropdown-menu" aria-labelledby="dropdown03">
								<li><a class="dropdown-item" href="doctor.html">Doctors</a></li>
								<li><a class="dropdown-item" href="doctor-single.html">Doctor
										Single</a></li>
								<li><a class="dropdown-item" href="appoinment.html">Appoinment</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="blog-sidebar.html"
							id="dropdown05" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Blog <i class="icofont-thin-down"></i></a>
							<ul class="dropdown-menu" aria-labelledby="dropdown05">
								<li><a class="dropdown-item" href="blog-sidebar.html">Blog
										with Sidebar</a></li>

								<li><a class="dropdown-item" href="blog-single.html">Blog
										Single</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
				</div>
				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				<div class="navbar-nav ml-auto action-buttons">
					<form:form modelAttribute="loginMember" action="member/logintest">
						<div class="nav-item dropdown">
							<a href="#" data-toggle="dropdown"
								class="nav-link dropdown-toggle mr-4">Login</a>
							<div class="dropdown-menu action-form">
								<p class="hint-text">Sign in with your social media account</p>
								<div class="form-group social-btn clearfix">
									<a href="#" class="btn btn-secondary facebook-btn float-left"><i
										class="fa fa-facebook"></i> Facebook</a> <a href="#"
										class="btn btn-secondary twitter-btn float-right"><i
										class="fa fa-twitter"></i> Twitter</a>
								</div>
								<div class="or-seperator">
									<b>or</b>
								</div>
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
								<div class="text-center mt-2">
									<a href="#">Forgot Your password?</a>
								</div>
							</div>
						</div>
					</form:form>

					<form:form modelAttribute="joinMember" action="member/jointest">
						<div class="nav-item dropdown">
							<a href="#" data-toggle="dropdown"
								class="btn btn-primary dropdown-toggle sign-up-btn">Sign up</a>
							<div class="dropdown-menu action-form">
								<p class="hint-text">Fill in this form to create your
									account!</p>

								<div class="form-group">
									<input type="text" name="id" class="form-control" placeholder="id"
										required="required">
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control"
										placeholder="password" required="required">
								</div>
								<div class="form-group">
									<input type="password" name="confirmPassword" class="form-control"
										placeholder="confirmPassword" required="required">
								</div>
								<div class="form-group">
									<input type="text" name="name" class="form-control" placeholder="name"
										required="required">
								</div>
								<div class="form-group">
									<input type="text"  name="phone" class="form-control" placeholder="phone"
										required="required">
								</div>
								<div class="form-group">
									<input type="text" name="age" class="form-control" placeholder="age"
										required="required">
								</div>

								<div class="form-group">
									<label class="form-check-label"><input type="checkbox"
										required="required"> I accept the <a href="#">Terms
											&amp; Conditions</a></label>
								</div>
								<input type="submit" class="btn btn-primary btn-block"
									value="Sign up">
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</nav> --%>
	</header>


	<!-- Slider Start -->
	<section class="banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-xl-7">
					<div class="block">
						<div class="divider mb-3"></div>
						<span class="text-uppercase text-sm letter-spacing ">Total
							Health care solution</span>
						<h1 class="mb-3 mt-3">Your most trusted health partner</h1>

						<p class="mb-4 pr-5">A repudiandae ipsam labore ipsa
							voluptatum quidem quae laudantium quisquam aperiam maiores sunt
							fugit, deserunt rem suscipit placeat.</p>
						<div class="btn-container ">
							<a href="${pageContext.request.contextPath}/appointmentForm.jsp" target="_blank"
								class="btn btn-main-2 btn-icon btn-round-full">Make an
								appointment <i class="icofont-simple-right ml-2  "></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="features">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="feature-block d-lg-flex">
						<div class="feature-item mb-5 mb-lg-0">
							<div class="feature-icon mb-4">
								<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/hospital_icon.png">
								<!-- <i class="icofont-surgeon-alt"></i> -->
							</div>
							<span>24 Hours Service</span>
							<h4 class="mb-3">Online Appointment</h4>
							<p class="mb-4">Get ALl time support for emergency.We have
								introduced the principle of family medicine.</p>
							<a href="<c:url value='hospital/searchDept'/>" class="btn btn-main btn-round-full">Hospital Search</a>
						</div>

						<div class="feature-item mb-5 mb-lg-0">
							<div class="feature-icon mb-4">
								<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/pharmacy_icon.png">
								<!-- <i class="icofont-ui-clock"></i> -->
							</div>
							<span>Timing schedule</span>
							<h4 class="mb-3">Working Hours</h4>
							<ul class="w-hours list-unstyled">
								<li class="d-flex justify-content-between">Sun - Wed : <span>8:00
										- 17:00</span></li>
								<li class="d-flex justify-content-between">Thu - Fri : <span>9:00
										- 17:00</span></li>
								<li class="d-flex justify-content-between">Sat - sun : <span>10:00
										- 17:00</span></li>
							</ul>
						</div>

						<div class="feature-item mb-5 mb-lg-0">
							<div class="feature-icon mb-4">
								<i class="icofont-support"></i>
							</div>
							<span>Emegency Cases</span>
							<h4 class="mb-3">1-800-700-6200</h4>
							<p>Get ALl time support for emergency.We have introduced the
								principle of family medicine.Get Conneted with us for any
								urgency .</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


<%-- 	<section class="section about">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 col-sm-6">
					<div class="about-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/img-1.jpg"
							alt="" class="img-fluid"> <img
							src="${pageContext.request.contextPath}/resources/images/about/img-2.jpg"
							alt="" class="img-fluid mt-4">
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="about-img mt-4 mt-lg-0">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/img-3.jpg"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-4">
					<div class="about-content pl-4 mt-4 mt-lg-0">
						<h2 class="title-color">
							Personal care <br>& healthy living
						</h2>
						<p class="mt-4 mb-5">We provide best leading medicle service
							Nulla perferendis veniam deleniti ipsum officia dolores repellat
							laudantium obcaecati neque.</p>

						<a href="service.html"
							class="btn btn-main-2 btn-round-full btn-icon">Services<i
							class="icofont-simple-right ml-3"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section> --%>
	<section class="cta-section ">
		<div class="container">
			<div class="cta position-relative">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="counter-stat">
							<i class="icofont-doctor"></i> <span class="h3">58</span>k
							<p>Happy People</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="counter-stat">
							<i class="icofont-flag"></i> <span class="h3">700</span>+
							<p>Surgery Comepleted</p>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="counter-stat">
							<i class="icofont-badge"></i> <span class="h3">40</span>+
							<p>Expert Doctors</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="counter-stat">
							<i class="icofont-globe"></i> <span class="h3">20</span>
							<p>Worldwide Branch</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- <section class="section service gray-bg">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<div class="section-title">
						<h2>Award winning patient care</h2>
						<div class="divider mx-auto my-4"></div>
						<p>Lets know moreel necessitatibus dolor asperiores illum
							possimus sint voluptates incidunt molestias nostrum laudantium.
							Maiores porro cumque quaerat.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-laboratory text-lg"></i>
							<h4 class="mt-3 mb-3">Laboratory services</h4>
						</div>

						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-heart-beat-alt text-lg"></i>
							<h4 class="mt-3 mb-3">Heart Disease</h4>
						</div>
						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-tooth text-lg"></i>
							<h4 class="mt-3 mb-3">Dental Care</h4>
						</div>
						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>


				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-crutch text-lg"></i>
							<h4 class="mt-3 mb-3">Body Surgery</h4>
						</div>

						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-brain-alt text-lg"></i>
							<h4 class="mt-3 mb-3">Neurology Sargery</h4>
						</div>
						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-dna-alt-1 text-lg"></i>
							<h4 class="mt-3 mb-3">Gynecology</h4>
						</div>
						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<section class="section appoinment">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 ">
					<div class="appoinment-content">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/img-3.jpg"
							alt="" class="img-fluid">
						<div class="emergency">
							<h2 class="text-lg">
								<i class="icofont-phone-circle text-lg"></i>+23 345 67980
							</h2>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-10 ">
					<div class="appoinment-wrap mt-5 mt-lg-0">
						<h2 class="mb-2 title-color">Book appointment</h2>
						<p class="mb-4">Mollitia dicta commodi est recusandae iste,
							natus eum asperiores corrupti qui velit . Iste dolorum atque
							similique praesentium soluta.</p>
						<form id="#" class="appoinment-form" method="post" action="#">
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="exampleFormControlSelect1">
											<option>Choose Department</option>
											<option>Software Design</option>
											<option>Development cycle</option>
											<option>Software Development</option>
											<option>Maintenance</option>
											<option>Process Query</option>
											<option>Cost and Duration</option>
											<option>Modal Delivery</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="exampleFormControlSelect2">
											<option>Select Doctors</option>
											<option>Software Design</option>
											<option>Development cycle</option>
											<option>Software Development</option>
											<option>Maintenance</option>
											<option>Process Query</option>
											<option>Cost and Duration</option>
											<option>Modal Delivery</option>
										</select>
									</div>
								</div>

								<div class="col-lg-6">
									<div class="form-group">
										<input name="date" id="date" type="text" class="form-control"
											placeholder="dd/mm/yyyy">
									</div>
								</div>

								<div class="col-lg-6">
									<div class="form-group">
										<input name="time" id="time" type="text" class="form-control"
											placeholder="Time">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input name="name" id="name" type="text" class="form-control"
											placeholder="Full Name">
									</div>
								</div>

								<div class="col-lg-6">
									<div class="form-group">
										<input name="phone" id="phone" type="Number"
											class="form-control" placeholder="Phone Number">
									</div>
								</div>
							</div>
							<div class="form-group-2 mb-4">
								<textarea name="message" id="message" class="form-control"
									rows="6" placeholder="Your Message"></textarea>
							</div>

							<a class="btn btn-main btn-round-full" href="appoinment.html">Make
								Appoinment <i class="icofont-simple-right ml-2  "></i>
							</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section testimonial-2 gray-bg">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="section-title text-center">
						<h2>We served over 5000+ Patients</h2>
						<div class="divider mx-auto my-4"></div>
						<p>Lets know moreel necessitatibus dolor asperiores illum
							possimus sint voluptates incidunt molestias nostrum laudantium.
							Maiores porro cumque quaerat.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12 testimonial-wrap-2">
					<div class="testimonial-block style-2  gray-bg">
						<i class="icofont-quote-right"></i>

						<div class="testimonial-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/images/team/test-thumb1.jpg"
								alt="" class="img-fluid">
						</div>

						<div class="client-info ">
							<h4>Amazing service!</h4>
							<span>John Partho</span>
							<p>They provide great service facilty consectetur adipisicing
								elit. Itaque rem, praesentium, iure, ipsum magnam deleniti a vel
								eos adipisci suscipit fugit placeat.</p>
						</div>
					</div>

					<div class="testimonial-block style-2  gray-bg">
						<div class="testimonial-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/images/team/test-thumb2.jpg"
								alt="" class="img-fluid">
						</div>

						<div class="client-info">
							<h4>Expert doctors!</h4>
							<span>Mullar Sarth</span>
							<p>They provide great service facilty consectetur adipisicing
								elit. Itaque rem, praesentium, iure, ipsum magnam deleniti a vel
								eos adipisci suscipit fugit placeat.</p>
						</div>

						<i class="icofont-quote-right"></i>
					</div>

					<div class="testimonial-block style-2  gray-bg">
						<div class="testimonial-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/images/team/test-thumb3.jpg"
								alt="" class="img-fluid">
						</div>

						<div class="client-info">
							<h4>Good Support!</h4>
							<span>Kolis Mullar</span>
							<p>They provide great service facilty consectetur adipisicing
								elit. Itaque rem, praesentium, iure, ipsum magnam deleniti a vel
								eos adipisci suscipit fugit placeat.</p>
						</div>

						<i class="icofont-quote-right"></i>
					</div>

					<div class="testimonial-block style-2  gray-bg">
						<div class="testimonial-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/images/team/test-thumb4.jpg"
								alt="" class="img-fluid">
						</div>

						<div class="client-info">
							<h4>Nice Environment!</h4>
							<span>Partho Sarothi</span>
							<p class="mt-4">They provide great service facilty
								consectetur adipisicing elit. Itaque rem, praesentium, iure,
								ipsum magnam deleniti a vel eos adipisci suscipit fugit placeat.
							</p>
						</div>
						<i class="icofont-quote-right"></i>
					</div>

					<div class="testimonial-block style-2  gray-bg">
						<div class="testimonial-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/images/team/test-thumb1.jpg"
								alt="" class="img-fluid">
						</div>

						<div class="client-info">
							<h4>Modern Service!</h4>
							<span>Kolis Mullar</span>
							<p>They provide great service facilty consectetur adipisicing
								elit. Itaque rem, praesentium, iure, ipsum magnam deleniti a vel
								eos adipisci suscipit fugit placeat.</p>
						</div>
						<i class="icofont-quote-right"></i>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%-- 	<section class="section clients">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="section-title text-center">
						<h2>Partners who support us</h2>
						<div class="divider mx-auto my-4"></div>
						<p>Lets know moreel necessitatibus dolor asperiores illum
							possimus sint voluptates incidunt molestias nostrum laudantium.
							Maiores porro cumque quaerat.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row clients-logo">
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/1.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/2.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/3.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/4.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/5.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/6.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/3.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/4.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/5.png"
							alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-2">
					<div class="client-thumb">
						<img
							src="${pageContext.request.contextPath}/resources/images/about/6.png"
							alt="" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section> --%>
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
