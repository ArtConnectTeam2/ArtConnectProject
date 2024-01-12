<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!-- style -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- font-awesome -->
<link href="${pageContext.request.contextPath}/resources/css/effects/set2.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/effects/normalize.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/effects/component.css" rel="stylesheet"
	type="text/css">
	
<style>
/* 네비게이션 위치 조정 */
.navy {
	position: absolute;
	top: 70px; /* 원하는 값으로 조정해주세요 */
	left: 100px; /* 원하는 값으로 조정해주세요 */
}

.navbar-brand {
	position: absolute;
	top: 5px;
	left: 20px;
}
</style>
</head>

<body>
	<header role="header">
		<div class="container">
		<!-- logo -->

			<h1>
				<a href="${pageContext.request.contextPath}/gallery/main.jsp"
					title="Logo"><img id="logo-image"
					src="${pageContext.request.contextPath}/resources/img/gallery/메인 홈페이지/art.png"
					title="art connect" alt="avana LLC" /></a>
			</h1>

			<!-- logo -->
			<!-- nav -->
			<nav role="header-nav" class="navy">
			<ul>
				<li class="nav-active"><a
						href="${pageContext.request.contextPath}/gallery/list"
						title="Work">전시관 조회 및 검색</a></li>

					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
			</ul>
			</nav>
			<!-- Navigation -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a class="navbar-brand" href=""> <!-- 이미지 추가 --> <img
						src="${pageContext.request.contextPath}/resources/images/art.png" alt="Your Logo" class="img-fluid"
						style="max-height: 40px;">
					</a>
				</div>
			</nav>
		</div>
	</header>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<h1>REVIEW</h1>
	<hr>
	<div class="container mt-3">
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>ID</th>
				<th>제목</th>
				<th>내용</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<c:forEach var ="board" items="${list}">
	
		<tr>
		<td>${board.reviewNO}</td>
		<td>${board.memberID}</td>
		<td>
		<a href="boardOne?reviewNO=${board.reviewNO}">
		${fn:substring(board.reviewTitle, 0, 15)}
		</a>
		</td>
		<td>${fn:substring(board.reviewContent, 0, 50)}</td>
		<td>${board.reviewDate}</td>
		<td>${board.reviewHit}</td>
		</tr>
		</c:forEach>
		</table>
	</div>
	<hr>
	
	
	<div>
	<span style="float: right;">
		<a href="boardPost" type ="button" class="btn btn-primary">글 쓰기</a>
	</span>
	</div>
	<!-- 페이징 부분 추가 -->
<div class="container mt-3">
    <ul class="pagination">
        <c:forEach begin="1" end="${pageVO.totalPages}" varStatus="i">
            <li class="${pageVO.page eq i.index ? 'active' : ''}">
                <a href="boardList?page=${i.index}&size=${pageVO.size}">${i.index}</a>
            </li>
        </c:forEach>
    </ul>
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
	
	<!-- JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/effects/masonry.pkgd.min.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/effects/imagesloaded.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/effects/classie.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/effects/AnimOnScroll.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/effects/modernizr.custom.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
	
</body>
</html>