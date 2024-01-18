<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="author" content="">
<title>QnA 조회</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- style -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- font-awesome -->
<link
	href="${pageContext.request.contextPath}/resources/css/effects/set2.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/effects/normalize.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/effects/component.css"
	rel="stylesheet" type="text/css">
<style>
/* 네비게이션 위치 조정 */
.navy {
	position: absolute;
	top: 10px; /* 원하는 값으로 조정해주세요 */
	right: 10px; /* 원하는 값으로 조정해주세요 */
}

.navbar-brand {
	position: absolute;
	top: 5px;
	left: 20px;
}

.login {
	position: absolute;
	top: 5px;
	left: 100px;
}
table {
	border-collapse: collapse; /* 테이블 셀 경계를 합침 */
	width: 80%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	height: 200px; /* 테이블의 높이를 200px로 설정 */
	margin: auto;
}

th {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 8px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
	background-color: #f2f2f2;
}

td {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 20px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
}
</style>

</head>
<body>
	<header role="header">
		<div class="container">
			<!-- nav -->
			<nav role="header-nav" class="navy">
				<ul>
					<li class="nav-active"><a
						href="${pageContext.request.contextPath}/gallery/list"
						title="Work">전시관 조회 및 검색</a></li>

					<li><a
						href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp"
						title="About">예약</a></li>

					<li><a
						href="${pageContext.request.contextPath}/review/boardList.jsp"
						title="Blog">커뮤니티</a></li>

					<li><a
						href="${pageContext.request.contextPath}/mypage/mypage.jsp"
						title="Contact">마이 페이지</a></li>

					<li><a
						href="${pageContext.request.contextPath}/notice/noticeList2.jsp"
						title="Contact">공지사항</a></li>

					<li><a
						href="${pageContext.request.contextPath}/notice/QnaList.jsp"
						title="Contact">QnA</a></li>
				</ul>
				<div class="login">
					<button class="btn btn-danger" onclick="showLoginModal()">로그인</button>
				</div>
			</nav>
			<!-- Navigation -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a class="navbar-brand" href=""> <!-- 이미지 추가 --> <img
						src="${pageContext.request.contextPath}/resources/img/art.png"
						alt="Your Logo" class="img-fluid" style="max-height: 40px;">
					</a>
				</div>
			</nav>
		</div>
	</header>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container">
		<h1 style="text-align: center;">질의응답(QnA)게시판</h1>
		<hr>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
			</tr>
			<tr>
				<td>${vo.no}</td>
				<td>${vo.title}</td>
				<td>${vo.id}</td>
				<td>${vo.content}</td>
			</tr>
		</table>
		<hr>
	<div>
		<a href="qnaModify?no=${vo.no}" class="btn btn-primary">수정</a>
		<a onclick="return confirm('정말로삭제하겠습니까?')"href="qnaDel?no=${vo.no}" class="btn btn-primary">삭제</a>
	</div>
	
	<!-- 댓글조회 -->
	<hr>
	<c:forEach items="${list}" var="vo2">
	<li>
	<div>
		<p>${vo2.writer} / ${vo2.regDate}</p>
		<p>${vo2.content}</p>
	</div>
	</li>	
	</c:forEach>
	
	<!-- 댓글작성 -->
	<div>
		<form  action="commentInsert">
		<p><label>댓글 작성자</label> <input type="text" name="writer" value="관 리 자"></p>
		<p><textarea rows="5" cols="50" name="content"></textarea></p>
		<p><input type="hidden" name="bno" value="${vo.no}"></p>
		<p><button type="submit" class="btn btn-primary">댓글 작성</button></p>
		</form>	
	</div>
			
	</main>

	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="container">
			<p>COPYRIGHT©멀티캠퍼스 2조. All Rights Reserved</p>
			<p>본 홈페이지에 게시된 전화번호나 전자우편주소를 영리목적으로 자동 수집·전송하는 행위는 정보통신망법 및
				개인정보보호법에 의해 처벌됩니다.</p>
		</div>
	</footer>

	<!-- JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/nav.js"
		type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/masonry.pkgd.min.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/imagesloaded.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/classie.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/AnimOnScroll.js"
		type="text/javascript"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/effects/modernizr.custom.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/html5shiv.js"
		type="text/javascript"></script>

</body>
</html>