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
 
<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
/* 날짜선택시 캘린더를 띄워줌  */
$(function() { 
	$( "#Date" ).datepicker({
		//showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다. 
		//buttonImage: "/application/db/jquery/images/calendar.gif", // 
		//버튼 이미지 buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다. 
		changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다. 
		changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다. 
		//maxDate : 0, //// 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
		minDate: 0, // 오늘 날짜부터 선택할 수 있음
		//nextText: '다음 달', // next 아이콘의 툴팁. 
		//prevText: '이전 달', // prev 아이콘의 툴팁. 
		numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다. 
		//stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가. 
		//yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가. 
		showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. 
		//currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널 
		closeText: 'Close', // 닫기 버튼 패널 
		dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식. 
		//Format: "yy/mm/dd", // 텍스트 필드에 입력되는 날짜 형식. 
		showAnim: "slide", //애니메이션을 적용한다. 
		//showMonthAfterYear: true, // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
		//dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식. 
		//monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식. 
		//yearRange: "2010:2013" //연도 범위	
		beforeShowDay: function(date){
			var day = date.getDay();
			return [(day != 0 && day != 6)];
		}		
	/*  beforeShowDay: function(date){
			var day = date.getDay();
			//return [(day != 0 && day != 1 && day != 3 && day != 4 && day != 6)];

			
			//var d = ${day};
			var d = '<c:out value="${day}"/>';
			if (d == 'MON')
				return [(day != 0 && day != 6)];

				//return [(day == 1),''];
				//return [(day != 0 && day != 2 && day != 3 && day != 4 && day != 5 && day != 6)];
			else if(d == 'TUE')
				return [(day != 0 && day != 1 && day != 3 && day != 4 && day != 5 && day != 6)];
			else if (d=='WED')
				return [(day != 0 && day != 1 && day != 2 && day != 4 && day != 5 && day != 6)];
			else if (d=='THR')
				return [(day != 0 && day != 1 && day != 2 && day != 3 && day != 5 && day != 6)];
			else if (d=='FRI')
				return [(day != 0 && day != 1 && day != 2 && day != 3 && day != 4 && day != 6)];
			else if (d=='SAT')
				return [(day != 0 && day != 1 && day != 2 && day != 3 && day != 4 && day != 5)];
			else 
				return [(day != 1 && day != 2 && day != 3 && day != 4 && day != 5 $$ day != 5)];
			
		}  */
	/* 	onSelect: function(d){
			alert(d +"선택되었습니다.");
			//요일 가져오기
			//데이터를 먼저 가져옴(숫자로 넘어옴)
			var day = new Date($("#Date").datepicker({dateFormat:"yy-mm-dd"}).val());
			//일요일 0~
			alert("date:" + date.getDay());
			
			var week= new Array("SUN", "MON", "TUE", "WED", "THR", "FRI", "SAT");
			$("#resultDay").text(week[date.getDay()]);
		} */
	});
});

/* 선택한 날짜에 따라 선택할 수 있는 시간이 바뀜 */
function getTimeList(selectedDate){
	//배열 두개 받아오기 의사의 스케줄 + 의사가 이미 예약이 차있는 시간 스케줄
	
	//특정 날짜의 요일 구하기 yyyy-mm-dd로 넘어옴
	var week= new Array("SUN", "MON", "TUE", "WED", "THR", "FRI", "SAT");
	var selectedDay = new Date(selectedDate).getDay();
	var selectedLabel = week[selectedDay];
	
	var doc_id = '${doc_id}';//정상 : Controller에서 넘겨받음
	
	 $.ajax({
		type: 'GET',
		url: '../member/ajax_getlist',//controller에서 호출할 URL
		//dateType:'text',
		data:{"selectedDate" : selectedDate, "doc_id" : doc_id, "selectedDay" : selectedLabel},
		success: function(data){
			//alert(data); JsonArray의 값 확인[{...},{...},{...},...]
			$('#time').find('option').remove();
			var timelist = $.parseJSON(data);//well-formed JSON 문자열을 JavaScript object 로 반환, https://www.python2.net/questions-176244.htm
			//JSON 문자열을 JavaScript object로 변환해야 정상적으로 사용할 수 있습니다. 그렇지 않으면 그냥 문자열일 뿐이니까요.https://findfun.tistory.com/418

			$.each(timelist, function(index, value){
				//alert(key+":" + value);
				$('#time').append('<option value="' + value.time + '">' + value.timehr + '</option>');
			});						
		},
		error: function(request, status, error) {
			//alert("ERROR : " + textStatus + " : " + errorThrown);
			 //alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리

			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	}) 
	
} 

/* 다음 페이지로 넘어가기전에 입력내용을 한번 확인하게 해준다 */
/* function confirm_btn(){
	var hosName = '${hosName}';
	var deptName '${deptName}';
	var language = document.getElementById("selected_language");
	var date = document.getElementById("Date");
	var time = document.getElementById("time");
	var message = document.getElementById("message");
	
	if(!confirm("Hospital : " + hosName)){
		alert("Confirm");
	}
	else{
		alert("Rewrite");
	}
} */

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
						<h2 class="mb-2 title-color">Patients Personal Details</h2>
						<p class="mb-4">Please provide patient information for an appointment.</p>
						<form id="aptForm"  method="post" action="<c:url value='/member/appointmentConfirm'>
									<c:param name= 'deptName' value='${deptName}'/>
									<c:param name= 'hosName' value='${hosName}'/>
									<c:param name= 'doc_id' value='${doc_id}'/></c:url>" >
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group">
										Hospital : ${hosName}
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										Department : ${deptName}
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										Doctor : ${docName} M.D
									</div>
								</div>
								<%-- <div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="deptName">
											<option>${deptName}</option>
										</select>
									</div>
								</div> --%>
								
								<!-- <div class="col-lg-6">
									<div class="form-group">
										<input name="nationality" id="nationality" type="text" class="form-control"
											placeholder="Nationality">
									</div>
								</div> -->
								
								 <div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" name="selected_language" id="selected_language">
											<!-- <option disabled selected>Select language</option> -->
											<%-- <form:options items="${languages}"/> --%>
											 <c:forEach var="Lang" items="${languages}">
												<option value="${Lang}">${Lang}</option>
											</c:forEach> 
										</select>
									</div>
								</div>
								
							<!-- 	
								<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="gender">
											<option disabled selected>Gender</option>
											<option value="female">Female</option>
											<option value="male">Male</option>
											<option value="none">Not willing to disclose</option>
										</select>
									</div>
								</div> -->
								<!-- 
								<div class="col-lg-6">
									<div class="form-group">
										<input name="name" id="name" type="text" class="form-control"
											placeholder="Full Name">
									</div>
								</div> -->

							<!-- 	<div class="col-lg-6">
									<div class="form-group">
										<input name="phone" id="phone" type="Number"
											class="form-control" placeholder="Phone Number">
									</div>
								</div> -->

								<div class="col-lg-6">
									<div class="form-group">
										<input type="text" name="date" id="Date"  onchange="getTimeList(this.value);" class="form-control" placeholder="yy/mm/dd" />
									<!--  onchange="getTimeList(this.value);" -->
									</div>
								</div>
							

								<!-- <div class="col-lg-6">
									<div class="form-group">
										<input type="text" name="time"  class="form-control" placeholder="hh:mm"/>
									</div>
								</div> -->
								<div class="col-lg-6">
									<div class="form-group">
										<select class="form-control" id="time" name="time" >
											<option value="">no option</option>
											
											<%-- <c:choose>
												<c:when test="${time eq 0}">
													<option value="9:00">9:00-10:00</option>
													<option value="10:00">10:00-11:00</option>
													<option value="11:00">11:00-12:00</option>
													<option value="12:00">12:00-13:00</option>
												</c:when>
												<c:when test="${time eq 1}">
													<option value="14:00">14:00-15:00</option>
													<option value="15:00">15:00-16:00</option>
													<option value="16:00">16:00-17:00</option>
													<option value="17:00">17:00-18:00</option>
												</c:when>
												<c:otherwise>
													<option value="9:00">9:00-10:00</option>
													<option value="10:00">10:00-11:00</option>
													<option value="11:00">11:00-12:00</option>
													<option value="12:00">12:00-13:00</option>
													<option value="14:00">14:00-15:00</option>
													<option value="15:00">15:00-16:00</option>
													<option value="16:00">16:00-17:00</option>
													<option value="17:00">17:00-18:00</option>
												</c:otherwise>
											</c:choose> --%>
										</select>
									</div>
								</div>
								
							</div>
							<div class="form-group-2 mb-4">
								<textarea name="message" id="message" class="form-control"
									rows="6" placeholder="Special Request : If you have a special request or would like to know any information about your procedure or your doctor, please let us know."></textarea>
							</div>

							<%-- <a class="btn btn-main btn-round-full" href="<c:url value='/member/appointmentConfirm'>
									<c:param name= 'deptName' value='${deptName}'/>
									<c:param name= 'hosName' value='${hosName}'/></c:url>">Make an
								Appointment<i class="icofont-simple-right ml-2  "></i> --%>
								<input type="submit" class="btn btn-main btn-round-full" value="Confirm"/><!-- <i class="icofont-simple-right ml-2  "></i> -->
						
							</form>		
							
							<!-- @@@@@@@@@@@@@@@@@@@test -->
						<%-- 		 <a href="<c:url value='/member/timelistTest'>
						<c:param name= 'doc_id' value='${doc_id}'/>
						<c:param name= 'selectedDate' value='2021-08-04'/>
						<c:param name= 'selectedDay' value='TUE'/>
						</c:url>" class="btn btn-main-2 btn-round-full mt-3">test<i class="icofont-simple-right ml-2  "></i></a> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html> 