<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.multi.artConnect.gallery.GalleryVO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
 <html>

    <head>

    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <meta charset="utf-8">

        <!-- Description, Keywords and Author -->

        <meta name="description" content="">

        <meta name="author" content="">

        <title>:: 미술관 상세 정보 페이지 ::</title>

		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">

        <!-- style -->

        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">

        <!-- style -->

        <!-- bootstrap -->

        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- responsive -->

        <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">

        <!-- font-awesome -->

        <link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- font-awesome -->

        <link href="${pageContext.request.contextPath}/resources/css/effects/set2.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/effects/normalize.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/effects/component.css"  rel="stylesheet" type="text/css" >

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
					src="${pageContext.request.contextPath}/resources/img/gallery/art.png" title="avana LLC" alt="avana LLC" /></a>
			</h1>

                    <!-- logo -->

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

                <!-- work details -->
                	<div class="work-details">
                        <div class="row">
                        	<div class="col-xs-12 col-sm-12 col-md-4">
                            	<header role="work-title">
                                	<h2>${gallery.galleryName}</h2>
                                    <a href="#">Visit online Homepage<i class="fa fa-external-link" aria-hidden="true"></i></a>
                                    <div style="margin-top: 20px;">
                                    	<img src="${pageContext.request.contextPath}/resources/img/gallery/home-img/${gallery.galleryImg}"  alt="${gallery.galleryName} 이미지" class="img-responsive" />
                               		</div>
                                </header>
                            </div>
                            
                            <div class="col-xs-12 col-sm-12 col-md-8" style="margin-top: 110px;">
                            	<section>
                            	
                                	<p>
                                	<strong>Location of Art Museum : </strong> ${gallery.galleryLocation} <br/>
									<strong>Opening hours of Museum : </strong> ${gallery.galleryOpentime} - ${gallery.galleryClosetime} <br/>
									<strong>Closed Day : </strong>${gallery.closedDay}<br/>
									<strong>Contact : </strong>${gallery.galleryTel}<br/>
                                	</p>
                                	
                                    <p><strong>Add later :</strong><br/>

									cc </p>
                                </section>
                            </div>
                        </div>
                        
                        <div class="clearfix"></div>

                        <div class="work-images grid">

                            <ul class="grid-lod effect-2" id="grid">

                                <li><img src="${pageContext.request.contextPath}/resources/images/work/works-image-1.jpg" alt="" class="img-responsive"/></li>

                                <li><img src="${pageContext.request.contextPath}/resources/images/work/works-image-2.jpg" alt="" class="img-responsive"/></li>

                                <li><img src="${pageContext.request.contextPath}/resources/images/work/works-image-3.jpg" alt="" class="img-responsive"/></li>

                            </ul>

                        </div>

                    </div>

                <!-- work details -->

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

            <p class="copy-right">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>

        </footer>

        <!-- footer -->

    

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>

        <!-- custom -->

		<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->

        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/resources/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/resources/js/effects/imagesloaded.js"  type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/resources/js/effects/classie.js"  type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/resources/js/effects/AnimOnScroll.js"  type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/resources/js/effects/modernizr.custom.js"></script>

        <!-- jquery.countdown -->

        <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>

    </body>

</html>