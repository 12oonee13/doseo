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

<title>Hospital Search</title>
</head>
<body>
<section class="section testimonial-2 gray-bg">
		<div class="row justify-content-center">
			<div class="col-lg-7">
				<div class="section-title text-center">
					<h2>Create Account</h2>
					<div class="divider mx-auto my-4"></div>
					<p>Enter additional personal Information</p>
				</div>
			</div>
		</div>
</section>

<div>
	<form:form id="frm"  modelAttribute="searchHosList" action="searchHospitalList">
		<h2>Hospital Search</h2>
		Location
		<div >
			<select name="country">
				<option>Republic of Korea</option>
			</select>
		</div>
		<div>
			<select name="city">
				<option>Seoul</option>
			</select>
		</div>
		<div>
			<select name="district" required="required">
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
		Language
		<div>
			<select name="language" >
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
		<input type="submit" value="search"/>
		<!-- <button id="btn">search</button> -->
	</form:form>
<!-- 	
	<script type="text/javascript">
	$(function (){
		$('#btn').click(function()){
		$.ajax({
			type : 'POST'
			url : 'hospital/searchHospitalList'
			data : {
				'country' : $('#country').val(),
				'city' : $('#city').val(),
				'district' : $('#district').val(),
				'language' : $('#language').val()
				
			},
			sucess : function(data){
				alert("sucess");
				
			},
			error : function(){
				alert("error");
			}
		})
		}
	} 

</script> -->
	<!-- 
		<div id="map"></div>

		<script type="text/javascript">
			var map;
			var markers = [];

			<c:forEach var="hospital" items="${hosList}">
				var centerlat = "${hospital.hosDisLat}";
				var centerlong = "${hospital.hosDisLong}";
			</c:forEach>

			function initMap() {
				map = new google.maps.Map(document.getElementById('map'), {
					center : new google.maps.LatLng(centerlat, centerlong), /* 각 구마다 디비값 (위도, 경도) 추가해서 지도 중점 바꾸기.  */
					zoom : 14
				});

				var i = 0;
				<c:forEach var="hospital" items="${hosList}">
				markers.push(new google.maps.Marker({
					position : new google.maps.LatLng("${hospital.hosLat}",
							"${hospital.hosLong}"),
					map : map,
					title : "${hospital.hosEng}",
					animation : google.maps.Animation.DROP
				}));

				</c:forEach>
			}
		</script>

		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDwHGP52x5hIPsb8FK4SOYoc3W8I-tyNms&callback=initMap"
			async defer></script> -->
</div>

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