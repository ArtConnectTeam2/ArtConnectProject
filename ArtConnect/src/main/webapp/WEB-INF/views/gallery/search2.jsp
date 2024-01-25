<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.multi.artConnect.gallery.GalleryVO" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<title>:: 미술관 검색 결과 페이지 ::</title>

<%@ include file="/header.jsp" %>

<style>
.rounded-container {
    border: 2px solid #333; /* 테두리 스타일 설정 */
    border-radius: 10px; /* 테두리의 모서리를 둥글게 만듭니다. */
    padding: 20px; /* 적절한 패딩 값 적용 */
    width: 1170px;
    background-color: white;
}

.rounded-container2 {
    border: 2px solid #333; /* 테두리 스타일 설정 */
    border-radius: 10px; /* 테두리의 모서리를 둥글게 만듭니다. */
    padding: 20px; /* 적절한 패딩 값 적용 */
    width: 1170px;
    display: flex;
  	flex-wrap: wrap;
  	background-color: white;
}

</style>

</head>

<body>

<%@ include file="/nav.jsp" %>

	<main role="main-inner-wrapper" class="container">
		<div class="row">
			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content"  style="padding-left : 0px;">

					<header style="padding-top:0px;">

						<h2>
							<span>Art Gallery </span>Search Result
						</h2>

					</header>

					<p style="font-size: 25px;"> 키워드 <strong>"${param.galleryName}"</strong>에 대한 검색결과 입니다</p>

				</article>

			</section>
			
<div class="rounded-container">
			<div class="clearfix"></div>
</div>

<br>
<br>
<br>
<br>
<br>

<div class="rounded-container2">

<div class="thumbnails-pan">
    <c:if test="${not empty searchResult}">
        <c:forEach var="gallery" items="${searchResult}">
            <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " style="margin-bottom: 30px;">
                <figure>
                	<a href="${pageContext.request.contextPath}/gallery/detail?galleryID=${gallery.galleryID}">
                    <img src="${pageContext.request.contextPath}/resources/img/gallery/${gallery.galleryImg}"  alt="${gallery.galleryName} 이미지" class="img-responsive" /> 
                    </a>
                    <figcaption>
                        <h3>${gallery.galleryName}</h3>
                        <h5>View more</h5>
                    </figcaption>
                </figure>
            </section>
        </c:forEach>
    </c:if>
</div>

</div>


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

<%@ include file="/alljs.jsp" %>

</body>

</html>