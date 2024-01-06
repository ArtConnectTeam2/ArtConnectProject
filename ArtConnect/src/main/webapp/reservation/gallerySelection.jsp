<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
<title>미술관 선택</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
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
	<div style="text-align: center;">
		<!-- Search bar for gallery ID -->
		<input type="text" id="galleryNameInput" placeholder="미술관 이름을 입력하세요.">
		<button id="searchButton">검색</button>
		<button id="resetButton">검색 초기화</button>
	</div>

	<hr>

	<!-- Display area for galleries -->
	<div id="galleryDisplay">
		<!-- Initial gallery display will be loaded here -->
	</div>
</body>
</html>
