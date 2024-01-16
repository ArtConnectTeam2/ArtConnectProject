<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>전시관 홈페이지</title>
<%@ include file="/header.jsp" %>
</head>
<body>
<%@ include file="/nav.jsp" %>

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

	<%@ include file="/alljs.jsp" %>


</body>
</html>
