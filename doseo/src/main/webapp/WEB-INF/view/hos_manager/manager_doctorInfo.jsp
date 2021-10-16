<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Static Navigation - SB Admin</title>
<link href="${pageContext.request.contextPath}/resources/css/hos_admin_css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
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
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="<c:url value='/hospital/manager_main'></c:url>">Hospital Administrator</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                         <!--    <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                병원 정보
                            </a> -->
                            <!-- <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div> --> 
                            <!-- 정보 추가 서연 0828 -->
                            <div class="sb-sidenav-menu-heading">Information</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                정보 수정
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="../admin/admin_doctorInfo">Doctors</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <!-- @@@@@@@@@@@@Content@@@@@@@@@@@@@@@@@ -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">의사 정보 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                            <li class="breadcrumb-item active">Static Navigation</li>
                        </ol>
                        <section class="section service gray-bg">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<div class="section-title">
						<h2>Department</h2>
						<div class="divider mx-auto my-4"></div>
						<p>Lets know moreel necessitatibus dolor asperiores illum
							possimus sint voluptates incidunt molestias nostrum laudantium.
							Maiores porro cumque quaerat.</p>
					</div>
				</div>
			</div>
		
		<form:form id="frm" action='admin_searchDocList'>
			<div class="row">
				
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="service-item mb-4">
						<div class="icon d-flex align-items-center">
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Cardiology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Cardiology'/>
									</c:url>"><h4 class="mt-3 mb-3">Cardiology</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Dentistry.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Dentistry'/>
									</c:url>"><h4 class="mt-3 mb-3">Dentistry</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Dermatology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Dermatology'/>
									</c:url>"><h4 class="mt-3 mb-3">Dermatology</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Gastroenterology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Gastroenterology'/>
									</c:url>"><h4 class="mt-3 mb-3">Gastroenterology</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Nephrology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Nephrology'/>
									</c:url>"><h4 class="mt-3 mb-3">Nephrology</h4>
							</a>		
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Obstetrics_and_Gynecology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Obstetrics and Gynecology'/>
									</c:url>"><h4 class="mt-3 mb-3">Obstetrics and Gynecology</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Ophthalmology.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Ophthalmology'/>
									</c:url>"><h4 class="mt-3 mb-3">Ophthalmology</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Orthopedic_Surgery.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Orthopedic Surgery'/>
									</c:url>"><h4 class="mt-3 mb-3">Orthopedic Surgery</h4>
							</a>
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
							<img width="50" height="50"
									src="${pageContext.request.contextPath}/resources/images/depticon/Rehabilitation_Medicine.png">
							<a href="<c:url value='searchDocList'>
								<c:param name='deptName' value='Rehabilitation Medicine'/>
									</c:url>"><h4 class="mt-3 mb-3"> Rehabilitation Medicine</h4>
							</a>
						</div>
						<div class="content">
							<p class="mb-4">Saepe nulla praesentium eaque omnis
								perferendis a doloremque.</p>
						</div>
					</div>
				</div>
			</div>
		</form:form>
		</div>
	</section>
                       <!--  <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                    This page is an example of using static navigation. By removing the
                                    <code>.sb-nav-fixed</code>
                                    class from the
                                    <code>body</code>
                                    , the top navigation and side navigation will become static on scroll. Scroll down this page to see an example.
                                </p>
                            </div>
                        </div> 
                        <div style="height: 100vh"></div>
                        <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
                   		-->
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/hos_admin_js/scripts.js"></script>
    </body>
</html>
