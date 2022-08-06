<%@ page pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<title>${web_title}</title>

<link rel="shortcut icon" href="favicon.ico">
<script type="text/javascript" charset="utf8" src="assets/js/DataTables/css/dataTables.bootstrap5.min.css"></script>
<!-- FontAwesome JS-->
<script defer src="assets/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/portal.css">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
</head>

<body class="app">
	<header class="app-header fixed-top">
		<div class="app-header-inner">
			<div class="container-fluid py-2">
				<div class="app-header-content">
					<div class="row justify-content-between align-items-center">

						<div class="col-auto">
							<a id="sidepanel-toggler"
								class="sidepanel-toggler d-inline-block d-xl-none" href="#">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 30 30" role="img">
									<title>Menu</title><path stroke="currentColor"
										stroke-linecap="round" stroke-miterlimit="10" stroke-width="2"
										d="M4 7h22M4 15h22M4 23h22"></path></svg>
							</a>
						</div>
		            <div class="search-mobile-trigger d-sm-none col">
			            <i class="search-mobile-trigger-icon fas fa-search"></i>
			        </div><!--//col-->
		            <div class="app-search-box col">
		                <form class="app-search-form">   
							<input type="text" placeholder="Search..." name="search" class="form-control search-input">
							<button type="submit" class="btn search-btn btn-primary" value="Search"><i class="fas fa-search"></i></button> 
				        </form>
		            </div><!--//app-search-box-->
					</div>
					<!--//row-->
				</div>
				<!--//app-header-content-->
			</div>
			<!--//container-fluid-->
		</div>
		<!--//app-header-inner-->
		<div id="app-sidepanel" class="app-sidepanel">
			<div id="sidepanel-drop" class="sidepanel-drop"></div>
			<div class="sidepanel-inner d-flex flex-column">
				<a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
				<div class="app-branding">
					<a class="app-logo" href="index.html"><img
						class="logo-icon me-2" src="assets/images/app-logo.svg" alt="logo"><span
						class="logo-text">Management</span></a>

				</div>
				<!--//app-branding-->

				<nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
					<ul class="app-menu list-unstyled accordion" id="menu-accordion">
						<li class="nav-item">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link active" href="index.html"> <span
								class="nav-icon"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-house-door"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd"
											d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z" />
		  <path fill-rule="evenodd"
											d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
		</svg>
							</span> <span class="nav-link-text">Overview</span>
						</a> <!--//nav-link-->
						</li>
						<li class="nav-item has-submenu">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link submenu-toggle" href="#"
							data-bs-toggle="collapse" data-bs-target="#submenu-1"
							aria-expanded="false" aria-controls="submenu-1"> <span
								class="nav-icon"> <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
									<svg width="1em" height="1em" viewBox="0 0 16 16"
										class="bi bi-files" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
											d="M4 2h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4z" />
	  <path
											d="M6 0h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2v-1a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1H4a2 2 0 0 1 2-2z" />
	</svg>
							</span> <span class="nav-link-text">Pages</span> <span
								class="submenu-arrow"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-chevron-down"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
											d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
	</svg>
							</span> <!--//submenu-arrow-->
						</a> <!--//nav-link-->
							<div id="submenu-1" class="collapse submenu submenu-1"
								data-bs-parent="#menu-accordion">
								<ul class="submenu-list list-unstyled">
									<li class="submenu-item"><a class="submenu-link"
										href="/result">Result</a></li>
									<li class="submenu-item"><a class="submenu-link"
										href="/class">Class</a></li>
									<li class="submenu-item"><a class="submenu-link"
										href="/subject">Subject</a></li>
									<li class="submenu-item"><a class="submenu-link"
										href="/home">Student</a></li>
								</ul>
							</div>
						</li>

						<li class="nav-item">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link" href="ChartJs"> <span class="nav-icon">
									<svg width="1em" height="1em" viewBox="0 0 16 16"
										class="bi bi-bar-chart-line" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
											d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z" />
	</svg>
							</span> <span class="nav-link-text">Charts</span>
						</a> <!--//nav-link-->
						</li>

					</ul>
					<!--//app-menu-->
				</nav>
				<!--//app-nav-->
				<div class="app-sidepanel-footer">
					<nav class="app-nav app-nav-footer">
						<ul class="app-menu footer-menu list-unstyled">
							<li class="nav-item">
								<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
								class="nav-link" href="settings.html"> <span
									class="nav-icon"> <svg width="1em" height="1em"
											viewBox="0 0 16 16" class="bi bi-gear" fill="currentColor"
											xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
												d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z" />
	  <path fill-rule="evenodd"
												d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z" />
	</svg>
								</span> <span class="nav-link-text">Settings</span>
							</a> <!--//nav-link-->
							</li>
						</ul>
						<!--//footer-menu-->
					</nav>
				</div>
				<!--//app-sidepanel-footer-->

			</div>
			<!--//sidepanel-inner-->
		</div>
		<!--//app-sidepanel-->
	</header>
	<!--//app-header-->

	<div class="app-wrapper">

		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">
				<jsp:include page="${web_content}" />
			</div>
			<!--//container-fluid-->
		</div>
		<!--//app-content-->
		<footer class="app-footer">
			<div class="container text-center py-3">
				<!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
				<small class="copyright">Designed with <span class="sr-only">love</span><i
					class="fas fa-heart" style="color: #fb866a;"></i> by <a
					class="app-link" href="#">Lê Đăng Bình</a> for developers
				</small>

			</div>
		</footer>

	</div>
	<!--//app-wrapper-->


	<!-- Javascript -->
	<script src="assets/plugins/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Charts JS -->
	<script src="assets/plugins/chart.js/chart.min.js"></script>
	<script src="assets/js/index-charts.js"></script>

	<!-- Page Specific JS -->
	<script src="assets/js/app.js"></script>
	
	<!-- Data tables  -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="assets/js/DataTables/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="assets/js/datatables-simple-demo.js"></script>


</body>
</html>


