<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE HTML>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta charset="utf-8">
    <title>ArtConnect</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Responsive CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	th,td {
		vertical-align: middle; text-align: center; padding: 10px;
	}
	
	.navy {
		position: absolute;
		top: 10px;
		right: 10px;
	}
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
	<script type="text/javascript">
	$(function() {
		// 초기 데이터 로딩
		loadGallery("listGallery");

		// 검색 버튼 클릭 시
		$('#searchButton').click(function() {
			var galleryName = $('#galleryNameInput').val();
			loadGallery("searchGallery/" + encodeURIComponent(galleryName));
		});

		// 검색 초기화 버튼 클릭 시
		$('#resetButton').click(function() {
			loadGallery("listGallery");
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
    <header role="header">
        <div class="container">
            <!-- Logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp">
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/></a>
            </h1>
        </div>
    
         <!-- nav -->
    <nav role="header-nav" class="navy">
	<div id="menu-button" class>
	<span></span>
	<span></span>
	<span></span>
	"Navigation"
	</div>
	<ul class style="display: none;">
	<li class="nav-active">
	<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
    </ul>
	</nav>
    </header>
    <!-- Main Content -->
    <main role="main-inner-wrapper container">
        <div style="text-align: center; margin-top: 20px;">
            <!-- Search bar for gallery ID -->
            <input type="text" id="galleryNameInput" placeholder="미술관 이름을 입력하세요."
                class="form-control input-lg" style="width: 300px; display: inline-block;">
            <button id="searchButton" class="btn btn-primary btn-lg">검색</button>
            <button id="resetButton" class="btn btn-default btn-lg">검색 초기화</button>
        </div>

        <hr>

    </main>

    <!-- Footer -->
    <footer role="footer" style="margin: 0 20px;">
        <!-- Display area for galleries -->
        <div id="galleryDisplay" class="thumbnails-pan" style="font-size: 20px;">
        <!-- Initial gallery display will be loaded here -->
        </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    <!-- Custom Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- HTML5 Shiv -->
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
</body>

</html>
