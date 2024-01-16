<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<%@ include file="/header.jsp" %>

</head>

<body>

<%@ include file="/nav.jsp" %>

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
						<a href="${pageContext.request.contextPath}/gallery/list">View
							more</a>
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
			<!-- 구분선 -->
			<hr color="red">
		</div>

		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<header role="work-title">
						<h2>Review</h2>
						<a href="/review/boardList.jsp">View All Reviews<i class="fa fa-external-link"
							aria-hidden="true"></i></a>
					</header>
				</div>
				<div>
					<h2>가나다라</h2>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<hr style="height: 5px">
		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<header role="work-title">
						<h2>Notice</h2>
						<a href="#">View All Notices<i class="fa fa-external-link"
							aria-hidden="true"></i></a>
					</header>
				</div>
				<div>
					<h2>가나다라</h2>
				</div>
			</div>
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

<%@ include file="/alljs.jsp" %>

</body>

</html>