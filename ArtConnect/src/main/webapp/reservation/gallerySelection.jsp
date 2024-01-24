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
	<div class="login" style="display: block; text-align: right; margin-top: 75px; margin-right: 20px;">
		<% String memberID = (String) session.getAttribute("memberID");
		if (memberID == null || memberID.equals("")) { %>
			<a href="${pageContext.request.contextPath}/member/login">
				<button class="btn btn-danger" onclick="login()">로그인</button>
			</a>
		<% } else { %>
			<!-- 로그아웃 버튼 -->
			<%= memberID %>님 로그인되었습니다.<br>
			<a href="${pageContext.request.contextPath}/member/Logout.jsp?redirectPage=../reservation/gallerySelection.jsp">
				<button class="btn btn-info">로그아웃</button>
			</a>
		<% } %>
	</div>
    <header role="header" style="margin-top: -100px; margin-left: 0px;">
        <div class="container" style="display: inline-block; max-width: 50%;">
            <!-- Logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp">
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/></a>
            </h1>
                
         <!-- nav -->
    <nav role="header-nav" class="navy">
	<ul>
	<li><a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/notice.jsp" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/qna.jsp" title="Contact">QnA</a></li>
    </ul>
	</nav>
    </div>
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
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
</body>

</html>
