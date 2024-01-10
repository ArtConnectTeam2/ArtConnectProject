<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="author" content="">
<title>전시관 홈페이지</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- style -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- font-awesome -->
<link
	href="${pageContext.request.contextPath}/resources/css/effects/set2.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/effects/normalize.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/effects/component.css"
	rel="stylesheet" type="text/css">
<style>
/* 네비게이션 위치 조정 */
.navy {
	position: fixed;
	top: 70px; /* 원하는 값으로 조정해주세요 */
	left: 100px; /* 원하는 값으로 조정해주세요 */
}

.navbar-brand {
	position: absolute;
	top: 5px;
	left: 20px;
}

.login {
	position: fixed;
	top: 20px;
	left: 80px;
}
</style>

</head>
<body>
	<header role="header">
		<div class="container">
			<!-- 상단 메뉴 탭 목록-->
			<nav role="header-nav" class="navy">
				<ul>
					<li class="nav-active"><a href="index.html" title="Work">전시관</a></li>
					<li><a href="about.html" title="About">예약</a></li>
					<li><a href="blog.html" title="Blog">커뮤니티</a></li>
					<li><a href="contact.html" title="Contact">예약</a></li>
				</ul>
				<!-- 로그인 버튼 -->
				<div class="login">
					<a href="${pageContext.request.contextPath}/member/login">
						<button class="btn btn-danger" onclick="login()">로그인</button>
					</a>
				</div>
			</nav>
			<!-- 로고 버튼 -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a class="navbar-brand" href=""> <img
						src="${pageContext.request.contextPath}/resources/img/art.png"
						alt="Your Logo" class="img-fluid" style="max-height: 40px;">
					</a>
				</div>
			</nav>
		</div>
	</header>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container">
		<!-- 메인 인삿말 -->
		<div class="row">
			<article role="pge-title-content">
				<header>
					<h2>
						<span>Art Connect</span> Test
					</h2>
				</header>

			</article>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
				<ul class="grid-lod effect-2" id="grid">
					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/seoul.jpg"
								class="img-responsive" />
							<figcaption>
								<h2>
									서울 시립<span> 미술관</span>
								</h2>
								<p>더 자세한 정보를 원하시면 클릭하세요</p>
								<a href="https://sema.seoul.go.kr/">상세보기</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/mmca.jpg"
								class="img-responsive" />
							<figcaption>
								<h2>
									국립 현대<span> 미술관</span>
								</h2>
								<p>더 자세한 정보를 원하시면 클릭하세요</p>
								<a href="https://www.mmca.go.kr/">상세보기</a>
							</figcaption>
						</figure>
					</li>
				</ul>
			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
				<figure class="effect-oscar">
					<img src="https://ddp.or.kr/resources/img/intro/summary_img.jpg"
						class="img-responsive" />
					<figcaption>
						<h2>
							국립 현대<span> 미술관</span>
						</h2>
						<p>더 자세한 정보를 원하시면 클릭하세요</p>
						<a href="https://www.mmca.go.kr/">상세보기</a>
					</figcaption>
				</figure>
			</section>
			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
				<figure class="effect-oscar">
					<img
						src="${pageContext.request.contextPath}/resources/img/seoul.jpg"
						class="img-responsive" />
					<figcaption>
						<h2>
							서울 시립<span> 미술관</span>
						</h2>
						<p>더 자세한 정보를 원하시면 클릭하세요</p>
						<a href="https://sema.seoul.go.kr/">상세보기</a>
					</figcaption>
				</figure>
			</section>

			<div class="clearfix"></div>

			<div class="work-details">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-4">
						<header role="work-title">
							<h2>Project Name</h2>
							<a href="#">다양한 미술관을 만나보세요<i class="fa fa-external-link"
								aria-hidden="true"></i></a>
						</header>
					</div>
				</div>
			</div>



			<!-- Content for each tab -->
			<div id="exhibition" style="display: none;" class="col-md-12">
				<h2>전시관 조회</h2>
				<!-- Add your exhibition content here -->
			</div>
			<div id="reservation" style="display: none;" class="col-md-12">
				<h2>예약</h2>
				<!-- Add your reservation content here -->
			</div>
			<div id="community" style="display: none;" class="col-md-12">
				<h2>커뮤니티</h2>
				<!-- Add your community content here -->
			</div>
			<div id="mypage" style="display: none;" class="col-md-12">
				<h2>마이페이지</h2>
				<!-- Add your mypage content here -->
			</div>

		</div>
	</main>
	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="copy-right mt-4">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>

	<!-- JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/nav.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/masonry.pkgd.min.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/imagesloaded.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/classie.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/AnimOnScroll.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/modernizr.custom.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/html5shiv.js"
		type="text/javascript"></script>


</body>
</html>
