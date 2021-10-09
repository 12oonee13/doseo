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
#form_wrapper {
	display : inline-block;
	text-align : center; 
}

table {
  width: 100%;
  border-top: 1px solid #444444;
  border-collapse: collapse;
}
th, td {
  border-bottom: 1px solid #444444;
  padding: 10px;
}
</style>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
 $(document).ready(function () { 
	$("#btn").on("click", function(){
		//alert("hello");정상 실행됨
		var district = $("#district").val();
		var language = $("#language").val();
		//https://captaindule.tistory.com/entry/jquery-ajax-%EB%B0%B1%EB%8B%A8%EC%82%AC%EC%9A%A9-on-click
		//alert("language : " + language + "district : " + district);//id와 name 속성 혼동 주의
		
		   $.ajax({
			type: 'GET',
			url: '../pharmacy/ajax_getPharlist',
			data:{'district' : district, 'language' : language},
			success: function(data){
				//원래있던 데이터 지우기
				$("table").remove();
				
				//검색 결과 테이블로 나타내기
				var html ='';
				html += '<p><table style=' +'"margin-left:auto;margin-right:auto;text-align:center;"' + '>';
				html += '<tr><th>Pharmacy</th><th>약국</th><th>Tel</th><th>Detail</th>';
				if (language == 'All')
					html += '<th>Languages</th>';
				html +=	'</tr>';
				var pharlist = $.parseJSON(data);
				$.each(pharlist, function(index, value){
					//테이블
					html += '<tr>'
					html += '<td>'+ value.name_eng +'</td>';
					html += '<td>'+ value.name_kor +'</td>';
					html += '<td>'+ value.tel +'</td>';
					html += '<td>'+ value.detail +'</td>';
					if (language == 'All')
						html += '<td>'+ value.language +'</td>';
					html += '</tr>';
				});
				html += '</table></p>';
				$("#frm").after(html);//id가 frm인 form태그 다음으로 위치하도록 설정해준다
				//alert("success");
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
					<a href="../member/home" class="nav-item nav-link">Home</a>
					<%
					} else {
					%>
					<a href="../member/login_home" class="nav-item nav-link">Home</a>
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
					<form:form modelAttribute="loginMember" action="../member/login">
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
								<button class="btn btn-primary btn-block" onclick = "location.href = '../member/join'">ADD INFORMATION</button>
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
							My Page</a> <a href="../member/logout" class="nav-item nav-link">Sign out</a>
					</div>
					</c:if>
				<%
				}
				%>
			</div>
		</nav>
		</header>

<section class="section testimonial-2 gray-bg">
		<div class="row justify-content-center">
			<div class="col-lg-7">
				<div class="section-title text-center">
					<!-- <div class="btn-group btn-group-toggle " data-toggle="buttons">
						<label class="btn active "> <a href="mypage"
							id="mypage_category">My page </a></label> <label class="btn active ">
							<a href="appointment_list" id="mypage_category">Appointment </a>
						</label> <label class="btn active "> <a href="review_list"
							id="mypage_category">Review </a></label>
					</div>
					<hr> -->
					<h2>Pharmacy Search</h2>
					<div class="divider mx-auto my-4"></div>
					<p>Choose pharmacy that supports language you prefer.</p>
				</div>
			</div>
		</div>

		
 <div class="container">
	<div class="row align-items-center">
		<div class="col-lg-12 testimonial-wrap-2">
			<form id="frm" name="frm" >
			<!-- <span class="h3">Location</span> -->
			<span>
			<h3 style="text-align:center;">Location</h3>
			<div class="row justify-content-center">
				Republic of Korea 
				<!-- <select name="country">
					<option>Republic of Korea</option>
				</select> -->
			</div>
			<div  class="row justify-content-center">
				Seoul	

				<!-- <select name="city">
					<option>Seoul</option>
				</select> -->
			</div>
			<!--  <div class="col-lg-6"> -->
             	<div class="form-group">
                	<select style="text-align:center;" id="district" name="district" required="required" class="form-control">
						<option value="Jongno-gu">Jongno-gu</option>
						<option value="Jung-gu">Jung-gu</option>
						<option value="Yongsan-gu">Yongsan-gu</option>
						<option value=" Seongdong-gu">Seongdong-gu</option>
						<option value="Gwangjin-gu">Gwangjin-gu</option>
						<option value="Dongdaemun-gu">Dongdaemun-gu</option>
						<option value="Jungnang-gu">Jungnang-gu</option>
						<option value="Seongbuk-gu">Seongbuk-gu</option>
						<option value="Gangbuk-gu">Gangbuk-gu</option>
						<option value="Dobong-gu">Dobong-gu</option>
						<option value="Nowon-gu">Nowon-gu</option>
						<option value="Eunpyeong-gu">Eunpyeong-gu</option>
						<option value="Seodaemun-gu">Seodaemun-gu</option>
						<option value="Mapo-gu">Mapo-gu</option>
						<option value="Yangcheon-gu">Yangcheon-gu</option>
						<option value="Gangseo-gu">Gangseo-gu</option>
						<option value="Guro-gu">Guro-gu</option>
						<option value="Geumcheon-gu">Geumcheon-gu</option>
						<option value="Yeongdeungpo-gu">Yeongdeungpo-gu</option>
						<option value="Dongjak-gu">Dongjak-gu</option>
						<option value="Gwanak-gu">Gwanak-gu</option>
						<option value="Seocho-gu">Seocho-gu</option>
						<option value="Gangnam-gu">Gangnam-gu</option>
						<option value="Songpa-gu">Songpa-gu</option>
						<option value="Gangdong-gu">Gangdong-gu</option>
					</select>
                </div>
           <!--  </div> -->
			</span>
			<span>
			<!-- <span class="h3">Language</span> -->
			 <h3 style="text-align:center;">Language</h3>
			<!-- <div class="col-lg-6"> -->
             	<div class="form-group">
					<select id="language"  name="language" class="form-control" >
						<option value="All">-</option>
						<option value="Arabic">Arabic</option>
						<option value="Chinese">Chinese</option>
						<option value="English">English</option>
						<option value="Japanese">Japanese</option>
						<option value="Korean">Korean</option>
						<option value="Mongolian">Mongolian</option>
						<option value="Russian">Russian</option>
						<option value="Spanish">Spanish</option>
						<option value="Thai">Thai</option>
						<option value="Vietnamese">Vietnamese</option>
					</select>
				</div>
			<!-- </div>  -->
			</span>
			<%-- <a class="btn btn-main btn-round-full" href="<c:url value='pharmoutput'>
					<c:param name='district' value='${district}'/>
					</c:url>">search<i class="icofont-simple-right ml-2"></i></a> --%>
			<!-- 		
			<input type="button" id="btn" class="btn btn-main btn-round-full" value="search" onclick="alert("d")">		 -->
			<!-- <input type="submit" value="search"/>
 -->			<!-- <button id="btn">search</button> -->
 			<input type="button" id="btn" class="btn btn-main btn-round-full" value="search" >	
 			<%-- <a href="javascript:void(0);" onclick="btn('${result.board_idx}');return false;" class="btn btn-main btn-round-full">search</a> --%>
 
		</form>
		
	</div>
	</div>
</div> 

</section>	
			 <%-- <c:forEach var="Hos" items="${hoslistByDept}" varStatus="row">
				<p>${Hos.name_kor}</p>
				<p>${Hos.name_eng}</p>
				<p>${Hos.tel}</p>
				<p>${Hos.location}</p>
				<p>${Hos.detail}</p>
				<select name="language">
					<c:forEach var="items" items="${sessionScope.map}">
						<c:if test="${items.key==Hos.name_eng}">
							<c:forEach var ="item" items="${items.key} }">
								<option><c:out value="${map[item].value}"/></option>
							</c:forEach>
						</c:if>
					</c:forEach>
					<c:forEach var="Lang" items="${sessionScope.map.get('Hos.name_eng')}">
						<option value="${Lang}"><c:out value="${map[Lang].value}"/></option>
					</c:forEach>
				</select>
				<p>
					<select name="language" required="required">
						<c:forEach var="Lang" items="${langlist.get}">
							<option value=""></option>
						</c:forEach>
					</select>
				</p>
			</c:forEac --%>
	

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