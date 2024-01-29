<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>

    <title>ArtConnect</title>
    <%@ include file="/header.jsp"%>
    
<style type="text/css">

#searchButton {
	margin-bottom: 15px;
}

footer {
    bottom: 0;
    width: 100%;
    border-top: 1px solid #ddd;
}

th,td {
	vertical-align: middle;
	text-align: center;
	padding: 10px;
}

.navy {
	position: fixed;
	top: 10px;
	right: 10px;
}

.thumbnails-pan {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
}

#gallery-container {
	min-width: 900px;
	max-width: 1400px;
	margin: 0 auto;
	height: auto;
    border: 1px solid #333333; 
    border-radius: 10px;
    padding: 30px;
    background-color: white;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
    margin-bottom: 300px;
    align-content: center;
}

</style>
	<script type="text/javascript">
	$(function() {
		// 초기 데이터 로딩
		loadGallery("listGallery");

		// 검색 버튼 클릭 시
		$('#searchButton').click(function() {
			var galleryName = $('#galleryNameInput').val();
			if (galleryName.trim() === "") {
				// 검색창이 공란이면 초기 데이터 로딩
				loadGallery("listGallery");
			} else {
				loadGallery("searchGallery/" + encodeURIComponent(galleryName));
			}
		});
		
		// Enter 키 눌렀을 때
		$('#galleryNameInput').keypress(function(e) {
			if (e.which === 13) {
				var galleryName = $('#galleryNameInput').val();
				if (galleryName.trim() === "") {
					// 검색창이 공란이면 초기 데이터 로딩
					loadGallery("listGallery");
				} else {
					loadGallery("searchGallery/" + encodeURIComponent(galleryName));
				}
			}
		});
	});

	function loadGallery(url) {
		$.ajax({
			url : url,
			method : 'GET',
			success : function(response) {
				$('#galleryDisplay').html(response);
			},
			error : function(xhr, status, error) {
				console.error("AJAX Error: " + status + ", " + error);
			}
		});
	}
</script>
</head>

<body>
<%@ include file="/nav.jsp"%>
    <!-- Main Content -->
    <main role="main-inner-wrapper container">
        <div id="search-container" style="text-align: center; margin-top: 20px;">
            <!-- Search bar for gallery ID -->
            <input type="text" id="galleryNameInput" placeholder="미술관 이름을 입력하세요."
                class="form-control input-lg" style="width: 300px; display: inline-block;">
            <button id="searchButton" class="btn btn-primary btn-lg">검색</button>
        </div>
        <br><br>
		<div id="gallery-container">
			<!-- Display area for galleries -->
        	<div id="galleryDisplay" class="thumbnails-pan" style="font-size: 20px;">
        	<!-- Initial gallery display will be loaded here -->
        	</div>
		</div>
        <hr>
    </main>

    <!-- Footer -->
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
        <p class="copy-right">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
    </footer>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
</body>
</html>
