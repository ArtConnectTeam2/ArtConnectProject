<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.multi.artConnect.notice.NoticeVO"%>
<%@ page import="com.multi.artConnect.review.BoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<title>:: 미술관 메인 페이지 ::</title>

<%@ include file="/header.jsp" %>

<style>
        #entrance-text {
            font-size: 16px; /* 기본 글자 크기 */
            display: none; /* 초기에는 텍스트를 숨깁니다 */
            color: white;
        }

        .effect-oscar:hover #entrance-text {
            display: inline; /* 마우스를 올렸을 때 텍스트를 보이게 합니다 */
            font-size: 70px; /* 마우스를 올렸을 때 글자 크기를 키웁니다 */
        }
</style>

</head>

<body>

	<%@ include file="/nav.jsp"%>

	<main role="main-home-wrapper" class="container">

		<div class="row">

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content" style="margin-top: 20px; padding-left : 0px;">

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
							<span  id="entrance-text" style="color: while;">입장하기</span>
						</h2>
						<a href="${pageContext.request.contextPath}/gallery/list">View
							more</a>
					</figcaption>
				</figure>
			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
				<article role="pge-title-content" style="margin-top: 20px; padding-left : 0px;">

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
								src="${pageContext.request.contextPath}/resources/img/gallery/101.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>국립 현대 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=1">View
									more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/102.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>DDP 디자인 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=2">View
									more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/103.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>겸재정선 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=3">View
									more</a>
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
								src="${pageContext.request.contextPath}/resources/img/gallery/104.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>서울 시립 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=4">View
									more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/105.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>성북구립 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=5">View
									more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/106.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>최만린 </span> 미술관
								</h2>
								<p>View more</p>
								<a
									href="http://localhost:8080/artConnect/gallery/detail?galleryID=6">View
									more</a>
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

		<div class="work-details" style = "padding-left : 0px;">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<header role="work-title">
						<h2>Review</h2>

						<a href="${pageContext.request.contextPath}/review/boardList">View All Reviews<i class="fa fa-external-link"
							aria-hidden="true"></i></a>

					</header>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-9">
					<div>
						<a href="${pageContext.request.contextPath}/review/boardOne?reviewNO=32">
							<h3>몽환적인 여행, 미술관에서의 작품 해석과 감상</h3>
						</a>
						<h4>작성자: 임시ID</h4>
						<hr>
						<a href="${pageContext.request.contextPath}/review/boardOne?reviewNO=31">
							<h3>사진 속의 순간, 미술관에서 찍은 감각적인 흑백 사진 리뷰</h3>
						</a>
						<h4>작성자: 임시ID</h4>
						<hr>
						<a href="${pageContext.request.contextPath}/review/boardOne?reviewNO=30">
							<h3>문화의 향연, 다양성이 빛나는 미술관 전시회</h3>
						</a>
						<h4>작성자: 임시ID</h4>
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<hr style="height: 5px">
		<div class="work-details" style = "padding-left : 0px;">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<header role="work-title">
						<h2>Notice</h2>
						<a href="${pageContext.request.contextPath}/notice/noticeList">View All Notices<i class="fa fa-external-link"
							aria-hidden="true"></i></a>
					</header>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-9">
					<div>
						<a href="${pageContext.request.contextPath}/notice/noticeGet?no=20">
							<h3>[공지]아카이브 소장자료 열람 재개 안내</h3>
						</a>
						<hr>
						<a href="${pageContext.request.contextPath}/notice/noticeGet?no=19">
							<h3>연말 운영일정 안내	</h3>
						</a>
						<hr>
						<a href="${pageContext.request.contextPath}/notice/noticeGet?no=8">
							<h3>JMA FRIENDS EVENT <크리스마스 파티 인 뮤지엄>	</h3>
						</a>
					</div>
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

	<%@ include file="/alljs.jsp"%>

</body>

</html>