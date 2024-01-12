<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.multi.artConnect.gallery.GalleryVO" %>
<!DOCTYPE html>
<html>

<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">

<meta name="author" content="">



<title>:: 미술관 조회 및 검색 페이지 ::</title>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">

<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">

<!-- bootstrap -->

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<!-- responsive -->

<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet"
	type="text/css">

<!-- font-awesome -->

<link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- font-awesome -->

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

/* 체크박스 스타일 */
.form-check-input {
    /* 원하는 스타일 속성을 추가하세요 */
    width: 20px; /* 체크박스의 너비 */
    height: 20px; /* 체크박스의 높이 */
    margin-right: 5px; /* 체크박스 간격 조정 */
    display: inline-block; /* inline-block으로 설정하여 화면에 표시 */
    border: 2px solid #000; /* 테두리 스타일 설정 */
}

.form-check-input:checked {
    background-color: #000; /* 체크됐을 때의 배경색 설정 */
    border: 2px solid #000; /* 체크됐을 때의 테두리 스타일 설정 */
}

.form-check-input:not(:checked) {
    background-color: transparent; /* 체크되지 않았을 때의 배경색 설정 */
}
</style>

</head>

<body>
	<!-- header -->

	<header role="header">

		<div class="container">

			<!-- logo -->

			<h1>
				<a href="${pageContext.request.contextPath}/gallery/main.jsp" title="art connect"><img id="logo-image"
					src="${pageContext.request.contextPath}/resources/img/art.png" title="art connect" alt="art connect" /></a>
			</h1>

			<!-- nav -->
			<nav role="header-nav" class="navy">

				<ul>

					<li class="nav-active"><a href="${pageContext.request.contextPath}/gallery/main.jsp" title="Work">메인 화면으로 돌아가기</a></li>

					<li><a href="about.html" title="About">예약</a></li>

					<li><a href="blog.html" title="Blog">커뮤니티</a></li>

					<li><a href="contact.html" title="Contact">마이 페이지</a></li>

				</ul>

			</nav>
			<!-- nav -->

		</div>

	</header>

	<!-- header -->

	<!-- main -->

	<main role="main-inner-wrapper" class="container">
		<div class="row">
			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content">

					<header>

						<h2>
							<span>Art Museum </span>Inquiry & Search
						</h2>

					</header>

					<p>You can search for a list of Art Museums nationwide</p>

				</article>

			</section>

			<div class="clearfix"></div>

<div class="search-form" style="margin-top: 20px;">
    <form action="${pageContext.request.contextPath}/gallery/search2" method="GET">
        <div style="display: flex; align-items: center; justify-content: space-between; max-width: 400px; margin: 0 auto; text-align: center;">
            <input type="text" name="galleryName" placeholder="Search by Museum Name" required style="flex: 1; padding: 10px; text-align: center; width: 100%;">
            <button type="submit" style="background-color: #333; color: #fff; padding: 10px 20px; border: none; cursor: pointer;">Search</button>
        </div>
    </form>
        <a href="${pageContext.request.contextPath}/gallery/search"  style="text-decoration: none;"></a>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  <label class="form-check-label" for="flexCheckDefault">
    Default checkbox
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
  <label class="form-check-label" for="flexCheckChecked">
    Checked checkbox
  </label>
</div>

<%
    	ArrayList<GalleryVO> list = (ArrayList<GalleryVO>) request.getAttribute("list");
        for (GalleryVO bag : list) {
%>
            <div class="thumbnails-pan">
                <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " style="margin-bottom: 30px;">
                    <figure>
                    	<a href="${pageContext.request.contextPath}/gallery/detail?galleryName=<%= bag.getGalleryName() %>">
                        <img src="${pageContext.request.contextPath}/resources/img/gallery/<%= bag.getGalleryImg() %>"  alt="<%= bag.getGalleryName() %> 이미지" class="img-responsive" />
                        </a>
                        <figcaption>
                            <h3><%= bag.getGalleryName() %></h3>
                            <h5>View more</h5>
                        </figcaption>
                    </figure>
                </section>
            </div>
<%
        }
%>
			<!-- thumbnails -->

			<!-- thumbnails -->

		</div>

	</main>

	<!-- main -->

	<!-- footer -->

	<footer role="footer">

		<!-- nav -->

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

	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>

	<!-- custom -->

	<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

	<!-- jquery.countdown -->

	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>

</body>

</html>