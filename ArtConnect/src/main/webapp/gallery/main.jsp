<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">

<meta name="author" content="">


<title>:: 미술관 메인 페이지 ::</title>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">

<!-- style -->

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">

<!-- style -->

<!-- bootstrap -->

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<!-- responsive -->

<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet" type="text/css">

<!-- font-awesome -->

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
/* 이미지 크기와 위치 조정 */
#logo-image {
	max-width: 500px; /* 원하는 크기로 조절 */
	position: absolute;
	top: 10px; /* 이미지를 아래로 내리고 싶다면 값을 늘리세요 */
	left: 650px; /* 이미지를 오른쪽으로 이동하려면 값을 늘리세요 */
}

/* 네비게이션 위치 조정 */
.navy {
	position: absolute;
	top: 10px; /* 원하는 값으로 조정해주세요 */
	right: 10px; /* 원하는 값으로 조정해주세요 */
}
</style>

</head>

<body>

	<!-- header -->

	<header role="header">

		<div class="container">

			<!-- logo -->

			<h1>
				<a href="${pageContext.request.contextPath}/gallery/main.jsp" title="avana LLC"><img id="logo-image"
					src="${pageContext.request.contextPath}/resources/img/gallery/art.png"
					title="avana LLC" alt="avana LLC" /></a>
			</h1>

			<!-- logo -->

			<!-- nav -->

			<nav role="header-nav" class="navy">

				<ul>

					<li class="nav-active">
					<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>

				</ul>

			</nav>

			<!-- nav -->

		</div>

	</header>

	<!-- header -->

	<!-- main -->

	<main role="main-home-wrapper" class="container">

		<div class="row">

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content" style="margin-top: 20px;">

					<header>

						<h2>
							<span>ArtConnet</span> Where Art Meets Souls
						</h2>

					</header>

					<p>Comfortable Art Museum Stroll at Once</p>

				</article>

			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid"
				style="margin-top: 20px;">
				<figure class="effect-oscar">
					<img
						src="${pageContext.request.contextPath}/resources/img/gallery/메인 홈페이지/main2.png"
						alt="" class="img-responsive" />
					<figcaption>
								<br>
								<h2>
									<span style="color: black;"> </span> 
								</h2>
								<p>입장하기</p>
						<a href="${pageContext.request.contextPath}/gallery/list">View more</a>
					</figcaption>
				</figure>
			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
				<article role="pge-title-content" style="margin-top: 20px;">

					<header>

						<h2>
							<span>Trending</span> Art Museum<br> at this week
						</h2>
					</header>
				</article>

			</section>


			<div class="clearfix"></div>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">

				<ul class="grid-lod effect-2" id="grid">

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/1.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>서울 시립 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EC%84%9C%EC%9A%B8%EC%8B%9C%EB%A6%BD%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/2.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>북 서울 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EB%B6%81%EC%84%9C%EC%9A%B8%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/3.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>남 서울 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EB%82%A8%EC%84%9C%EC%9A%B8%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>
					<!-- 첫째줄 추가할꺼면 여기서 부터  -->

				</ul>

			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">

				<ul class="grid-lod effect-2" id="grid">

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/4.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>아모레 퍼시픽 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EC%95%84%EB%AA%A8%EB%A0%88%ED%8D%BC%EC%8B%9C%ED%94%BD%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/5.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>소마 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EC%86%8C%EB%A7%88%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>
					
					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/6.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>국립 현대 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryName=%EA%B5%AD%EB%A6%BD%ED%98%84%EB%8C%80%20%EB%AF%B8%EC%88%A0%EA%B4%80">View more</a>
							</figcaption>
						</figure>
					</li>
					<!-- 두째줄 추가할꺼면 여기서 부터  -->

				</ul>

			</section>

			<div class="clearfix"></div>

		</div>

	</main>

	<!-- main -->

	<!-- footer -->

	<footer role="footer">

		<nav role="footer-nav">

			<ul>

				<li><a href="index.html" title="Work">Work</a></li>

				<li><a href="about.html" title="About">About</a></li>

				<li><a href="blog.html" title="Blog">Blog</a></li>

				<li><a href="contact.html" title="Contact">Contact</a></li>

			</ul>

		</nav>

		<!-- nav -->

		<ul role="social-icons">

			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

		</ul>

		<p class="copy-right">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>

	</footer>

	<!-- footer -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"
		type="text/javascript"></script>

	<!-- custom -->

	<script src="${pageContext.request.contextPath}/resources/js/nav.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"
		type="text/javascript"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->

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

	<!-- jquery.countdown -->

	<script
		src="${pageContext.request.contextPath}/resources/js/html5shiv.js"
		type="text/javascript"></script>

</body>

</html>