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

<title>QnA조회</title>

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

#qna_title {
	border:5px double;
	border-color:#6E6E6E;
	border-radius: 1%; /* 모서리전체둥글기지정 */
	text-align: center;
	font-size: x-large;
	font-weight: bold; /* 글자굵기 */
	line-height: 2;
}

table {
	border-collapse: collapse; /* 테이블 셀 경계를 합침 */
	width: 80%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	height: 200px; /* 테이블의 높이를 200px로 설정 */
	margin: auto; /* 가로 중앙에 배치 */
}
th {
	padding: 12px; /* 안쪽 여백 설정 */
	height: 12px;
	background-color: #dcdcd1;
	text-align: center; /* 텍스트 정렬 */
}
td {
	padding: 25px; /* 안쪽 여백 설정 */
	height: 12px;
	border-bottom: 1px solid #ccc;
	text-align: center; /* 텍스트 정렬 */
}
tbody {
	height: 220px;
	padding: 20px;
}
tfoot {
	height: 12px;
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
						href="${pageContext.request.contextPath}/notice/noticeList"
						title="Contact">공지사항</a></li>

					<li><a
						href="${pageContext.request.contextPath}/notice/qnaList"
						title="Contact">QnA</a></li>
				</ul>
				<div class="login">
					<button class="btn btn-danger" onclick="showLoginModal()">로그인</button>
				</div>
			</nav>
			<!-- Navigation -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a href="${pageContext.request.contextPath}/gallery/main.jsp" title="Art Connect">
					<img src="${pageContext.request.contextPath}/resources/img/art.png" alt="Your Logo" class="img-fluid" style="max-width: 300px; max-height: 100px; "> </a>
				</div>
			</nav>
		</div>
	</header>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container">
	
	<div id="qna_title">
	질의응답(QnA)게시판
	</div>
	
		<hr>
		
	<div>
		<table border="1">
			<tr>
				<th>제 목</th>
				<td colspan="5">${vo.qnaTitle}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td colspan="5">${vo.qnaID}</td>
			</tr>
			<tr>
				<th>번 호</th>
				<td>${vo.qnaNO}</td>
				<th>조회수</th>
				<td>${vo.qnaHit}</td>
				<th>작성일</th>
				<td>${vo.qnaRegdate}</td>
			</tr>
			<tbody>
			<tr>
				<td colspan="6">${vo.qnaContent}</td>
			</tr>
			</tbody>
			<tfoot>
			<tr>
				<td style="border-left: none; border-right: none; border-bottom: none;">
						<a href="qnaList" class="btn btn-primary">목록</a>
				</td>
				<td colspan="4" style="border-left: none; border-right: none; border-bottom: none;"></td>
				<td style="border-left: none; border-right: none; border-bottom: none;">
						<a href="qnaModify?qnaNO=${vo.qnaNO}" class="btn btn-primary">수정</a>
						<a onclick="return confirm('정말로삭제하겠습니까?')"href="qnaDel?qnaNO=${vo.qnaNO}" class="btn btn-primary">삭제</a>
				</td>
			</tr>
			</tfoot>
		</table>
	</div>
	
		<hr>

	
	<!-- 댓글조회 -->
	<div>
		<table>
			<c:forEach items="${list}" var="vo2">
			<tr>
				<th>${vo2.commentWriter}</th>
				<th>${vo2.commentRegDate}</th>
			</tr>
			<tr>
				<td colspan="2">${vo2.commentContent}</td>
			</tr>
			</c:forEach>		
		</table>
	</div>
	
	<hr>
	
	<!-- 댓글작성 -->
	<div>
		<form  action="commentInsert">
		<table>
			<tr>
				<th colspan="2">댓글작성자</th>
				<td colspan="2"><input type="text" name="commentWriter" value="관리자"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="3" cols="110" name="commentContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="3" style="border-left: none; border-right: none; border-bottom: none;"></td>
				<td align="right" style="border-left: none; border-right: none; border-bottom: none;">
					<input type="hidden" name="commentBNO" value="${vo.qnaNO}">
					<button type="submit" class="btn btn-primary">댓글 작성</button>
				</td>			
			</tr>
		</table>
		</form>	
	</div>
			
	</main>

	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="container"></p>
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