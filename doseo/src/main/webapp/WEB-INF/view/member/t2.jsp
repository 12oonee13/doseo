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

</head>
<body>
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
					<a href="member/home" class="nav-item nav-link">Home</a>
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
					<a href="<c:url value='hospital/searchDept'/>" class="nav-item nav-link">Department</a> <a href="#"
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


				<%
				if (session.getAttribute("sessionForUser") == null) {
				%>
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

						<div class="nav-item dropdown">
							<a href="#" data-toggle="dropdown"
								class="btn btn-primary dropdown-toggle sign-up-btn">Sign up</a>
							<div class="dropdown-menu action-form">
								
								<p class="hint-text">create your account!</p>
								<hr>
								<div class="form-group">
									<label class="form-check-label"><input type="checkbox"
										required="required"> I accept the <a href="#">Terms
											&amp; Conditions</a></label>
								</div>
								<button class="btn btn-primary btn-block" onclick = "location.href = 'member/join'">ADD INFORMATION</button>
							</div>
						</div>
				</div>
				<%
				} else {
				%>
				<div class="navbar-nav">
					<!-- <a href="#" class="nav-item nav-link active">Pricing</a> -->
					<a href="mypage" class="nav-item nav-link">${sessionForUser.id}'s
						My Page</a> <a href="logout" class="nav-item nav-link">Sign out</a>
				</div>
				<%
				}
				%>
			</div>
		</nav>
</header>
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
						<form:form id="aptForm" modelAttribute="makeAppt" action="/member/appointmentForm" >
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
										<input name="nationality" id="nationality" type="text" class="form-control"
											placeholder="Nationality">
									</div>
								</div>
								
									<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="select_language">
											<option disabled selected>Select language</option>
											
										</select>
									</div>
								</div>
								
								
								
								<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="gender">
											<option disabled selected>Gender</option>
											<option value="female">Female</option>
											<option value="male">Male</option>
											<option value="none">Not willing to disclose</option>
										</select>
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
								
							</div>
							<div class="form-group-2 mb-4">
								<textarea name="message" id="message" class="form-control"
									rows="6" placeholder="Your Message"></textarea>
							</div>

							<a class="btn btn-main btn-round-full" href="<c:url value='/member/appointmentForm'/>">Make an
								Appointment <i class="icofont-simple-right ml-2  "></i>
							</a>
							</form:form>		
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html> 