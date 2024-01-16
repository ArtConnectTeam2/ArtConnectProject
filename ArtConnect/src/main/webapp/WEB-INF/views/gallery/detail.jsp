<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.multi.artConnect.gallery.GalleryVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
<!-- css 스타일  -->
<%@ include file="/header.jsp"%>
</head>

<body>
	<!-- nav, logo UI가 달라질 경우 이 부분을 변경해주세요 -->
	<%@ include file="/nav.jsp"%>

	<!-- main -->

	<main role="main-inner-wrapper" class="container">

		<!-- work details -->
		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-5">
					<header role="work-title">
						<h2>${gallery.galleryName}</h2>
						<a href="${gallery.homepageAddress}">Visit online Homepage<i
							class="fa fa-external-link" aria-hidden="true"></i></a>
						<div style="margin-top: 20px;">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/${gallery.galleryImg}"
								alt="${gallery.galleryName} 이미지" class="img-responsive" />
						</div>
					</header>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-7" style="margin-top: 110px;">
					<section>

						<p>
							<strong>Location of Art Museum : </strong>
							${gallery.galleryLocation} <br /> <strong>Opening hours
								of Museum : </strong> ${gallery.galleryOpentime} -
							${gallery.galleryClosetime} <br /> <strong>Closed Day :
							</strong>${gallery.closedDay}<br /> <strong>Contact : </strong>${gallery.galleryTel}<br />
						</p>

						<p>
							<strong>Add later :</strong><br /> cc
						</p>

						<p>
							<strong>Like! :</strong><br />
							<button id="likeButton">Like</button>
						</p>
						<strong id="likeMessage"></strong>
						<br>



					</section>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="work-images grid">
				<div class="work-map" style="margin-top: -10px;">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<header role="work-title" style="text-align: left;">
								<h2 style="margin-left: 0px;">${gallery.galleryName}찾아오시는길</h2>
							</header>
						</div>
					</div>
				</div>

				<div id="map"
					style="width: 100%; height: 400px; margin-bottom: 30px;"></div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79876cb9142b1dc6b254e0869dd8bd91"></script>
				<script type="text/javascript">
                           var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                           var options = { //지도를 생성할 때 필요한 기본 옵션
                           center: new kakao.maps.LatLng(${gallery.lat}, ${gallery.lon}), //지도의 중심좌표.
                           level: 3 //지도의 레벨(확대, 축소 정도)
                           };
                           var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
                           
                           // 마커가 표시될 위치입니다 
                            var markerPosition = new kakao.maps.LatLng(${gallery.lat},${gallery.lon});

                            // 마커를 생성합니다
                            var marker = new kakao.maps.Marker({
                                position: markerPosition
                            });

                            // 마커가 지도 위에 표시되도록 설정합니다
                            marker.setMap(map);
                        </script>

				<div class="work-program">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<header role="work-title" style="text-align: left;">
								<h2 style="margin-left: 0px;">${gallery.galleryName}프로그램</h2>
							</header>
						</div>
					</div>
				</div>

				<ul class="grid-lod effect-2" id="grid">
					<li class="col-xs-6 col-sm-6 col-md-6 col-lg-6"
						style="text-align: left;"><img
						src="${pageContext.request.contextPath}/resources/images/work/works-image-2.jpg"
						alt="" class="img-responsive" /></li>
					<li class="col-xs-6 col-sm-6 col-md-6 col-lg-6"
						style="text-align: left;"><img
						src="${pageContext.request.contextPath}/resources/images/work/works-image-3.jpg"
						alt="" class="img-responsive" /></li>
					<!-- 추가 이미지들도 유사한 방식으로 추가 -->
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

		<p class="copy-right">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>

	</footer>

	<!-- footer -->


	<!-- Java Script -->
	<%@ include file="/alljs.jsp"%>

	<!-- Like 관련 스크립트 -->
	<script>
	 $(document).ready(function() {
	        var likeButton = $("#likeButton");
	        var likeMessage = $("#likeMessage");
	        
	        // 좋아요 상태 가져오기
	        $.ajax({
	            url: "likeCheck",  
	            type: "POST",
	            data: {
	                galleryID: '${gallery.galleryID}',
	                galleryName: '${gallery.galleryName}'
	            },
	            success: function(response) {
	                if (response === "liked") {
	                    likeButton.text("Cancel Like");
	                    likeMessage.text("이미 좋아요한 항목입니다.");
	                } else {
	                    likeButton.text("Like");
	                    likeMessage.text("*Like를 누르시면 마이페이지에 추가됩니다.");
	                }
	            },
	            error: function(error) {
	                console.error("Error: " + error);
	            }
	        });

	        // Like 버튼 클릭시
	        $("#likeButton").click(function() {
	            // Like 버튼 클릭시
	            var likeButton = document.getElementById('likeButton');

	            if (likeButton.innerText === 'Like') {
	                // Like 버튼 클릭 처리
	                $.ajax({
	                    url: "like",
	                    type: "POST",
	                    data: {
	                        galleryID: '${gallery.galleryID}',
	                        galleryName: '${gallery.galleryName}'
	                    },
	                    success: function(response) {
	                        alert("좋아요 등록되었습니다");
	                        likeButton.innerText = 'Cancel Like';

	                        var likeMessage = $("#likeMessage");
	                        likeMessage.text("마이페이지에 추가되었습니다.");
	                    },
	                    error: function(error) {
	                        console.error("Error 발생: " + error);
	                        if (error.status === 500) {
	                            alert("로그인 후 이용가능합니다.");
	                        } else {
	                            alert("에러!");
	                        }
	                    }
	                });
	            } else {
	                // Cancel Like 버튼 클릭 처리
	                $.ajax({
	                    url: "cancleLike",
	                    type: "POST",
	                    data: {
	                        galleryID: '${gallery.galleryID}',
	                        galleryName: '${gallery.galleryName}'
	                    },
	                    success: function(response) {
	                        alert("좋아요를 취소했습니다");
	                        likeButton.innerText = 'Like';

	                        var likeMessage = $("#likeMessage");
	                        likeMessage.text("삭제함");
	                    },
	                    error: function(error) {
	                        console.error("Error: " + error);
	                    }
	                });
	            }
	        });
	    });
</script>

</body>

</html>