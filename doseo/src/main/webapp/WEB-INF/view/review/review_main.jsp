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
<script>
$(document).ready(function () { 
	$("#btn").on("click", function(){
		var hos_id = $('#hos_id').val();
		
		 $.ajax({
			type: 'GET',
			url: '../review/ajax_getReviewlist',
			data:{'hos_id' : hos_id},
			success: furntion(data){
				//원래있던 데이터 지우기
				$("div.testimonial-block style-2  gray-bg").remove();
				
				//검색결과 나타내기
				var html='';
				var revlist = $.parseJSON(data);
				$.each(revlist, function(index, value){
					html += '<i class="icofont-quote-right"></i>';
					html += '<div class="testimonial-thumb">';
					html += '<img src="${pageContext.request.contextPath}/resources/images/team/test-thumb1.jpg" alt="" class="img-fluid"></div>';
					html += '<div class="client-info ">';
					html += '<h4>' + value.hos_name_eng + ' : ' + value.dept_name_eng + '</h4>';
					html += '<span>'+ value.user_id + ' : <c:choose>';
					html += '<c:when test="' + value.rate +' eq \'1\'}">★☆☆☆☆</c:when>'+ '</span>';
					html += '<c:when test="' + value.rate +' eq \'2\'}">★★☆☆☆</c:when>'+ '</span>';
					html += '<c:when test="' + value.rate +' eq \'3\'}">★★★☆☆</c:when>'+ '</span>';
					html += '<c:when test="' + value.rate +' eq \'4\'}">★★★★☆</c:when>'+ '</span>';
					html += '<c:when test="' + value.rate +' eq \'5\'}">★★★★★</c:when>'+ '</span>';
					html +='</c:choose></span>';
					html += '<p>'+ value.detail +'</p>';
					html += '<p>' + value.ap_date + '</p></div></div>';	
				});
				$("#frm").after(html);//id가 frm인 form태그 다음으로 위치하도록 설정해준다
			},
			error: function(request, status, error) {
				//alert("ERROR : " + textStatus + " : " + errorThrown);
				 //alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리

				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		 })
	})
})
</script>
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


				<%
				if (session.getAttribute("sessionForUser") == null) {
				%>
				<div class="navbar-nav ml-auto action-buttons">
					<form:form action="member/login">
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
								 
								<input type="radio" name="kind_of_user" value="individual" checked> Individual 
								<input type="radio" name="kind_of_user" value="enterprise" > Enterprise 
								<input type="radio" name="kind_of_user" value="doctor" > Doctor 
								 
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
					<c:if test="${sessionForUser.id =='admin' }">
					<div class="navbar-nav">
						<!-- <a href="#" class="nav-item nav-link active">Pricing</a> -->
						<a href="../admin/main" class="nav-item nav-link">${sessionForUser.id}</a> <a href="../member/logout" class="nav-item nav-link">Sign out</a>
					</div>
					</c:if>
					<c:if test="${sessionForUser.id !='admin' }">
					<div class="navbar-nav">
						<!-- <a href="#" class="nav-item nav-link active">Pricing</a> -->
						<a href="mypage" class="nav-item nav-link">${sessionForUser.id}'s
							My Page</a> <a href="logout" class="nav-item nav-link">Sign out</a>
					</div>
					</c:if>
				<%
				}
				%>
			</div>
		</nav>
		</header>
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
							<form id="form" name="form" >
							<span>
							<h3 style="text-align:center;">Hospital</h3>
							<div class="form-group">
								<select style="text-align:center;" id="hos_id" name="hos_id" required="required" class="form-control">
									<option value="2000001">Seoul Sacred Heart General Hospital</option>
									<option value="2000002">Kyunghee University Medical Center</option>
									<option value="2000003">Konkuk University Medical Center</option>
									<option value="2000004">Asan Medical Center</option>
									<option value="2000005">Samsung Medical Center</option>
									<option value="All">All</option>
								</select>
							</div>
							</span>
							<input type="button" id="btn" class="btn btn-main btn-round-full" value="search" >
							</form>
						</div>
					</div>
				</div>
				
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-12 testimonial-wrap-2">
						<form id="frm" name="frm" ></form>
						<%-- 	<div class="testimonial-block style-2  gray-bg">
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
							</div> --%>
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
			
</body>
</html>