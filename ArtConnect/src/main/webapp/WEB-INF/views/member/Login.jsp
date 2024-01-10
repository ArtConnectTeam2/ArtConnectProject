<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인 페이지</title>
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

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	padding: 0;
	justify-content: center;
	height: 100vh;
	justify-content: center;
}

form {
	position: absolute;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
	max-width: 300px;
	background-color: #fff;
}

label {
	display: block;
	margin-bottom: 8px;
}

input {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
}

.commentys-form input[type="password"] {
	transition: all .2s linear;
	-o-transition: all .2s linear;
	-moz-transition: all .2s linear;
	-webkit-transition: all .2s linear;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

.navy {
	position: fixed;
	top: 70px; /* 원하는 값으로 조정해주세요 */
	left: 100px; /* 원하는 값으로 조정해주세요 */
}
</style>
</head>
<body>
	<header role="header">
		<div class="container">
			<!-- 상단 메뉴 탭 목록-->
			<nav role="header-nav" class="navy">
				<ul>
					<li class="nav-active"><a href="index.html" title="Work">전시관</a></li>
					<li><a href="about.html" title="About">예약</a></li>
					<li><a href="blog.html" title="Blog">커뮤니티</a></li>
					<li><a href="contact.html" title="Contact">예약</a></li>
				</ul>

			</nav>
			<!-- 로고 버튼 -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a class="navbar-brand" href="mainTest.jsp"> <img
						src="${pageContext.request.contextPath}/resources/img/art.png"
						alt="Your Logo" class="img-fluid" style="max-height: 40px;">
					</a>
				</div>
			</nav>
		</div>
	</header>
	<main role="main-home-wrapper" class="container">
		<!-- 메인 인삿말 -->
		<div class="row">
			<article role="pge-title-content">
				<header>
					<h2>
						<span>로그인 화면</span> Test
					</h2>
				</header>

			</article>

			<div class="clearfix"></div>

			<div class="contat-from-wrapper">
				<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">

					<!-- 만약 매퍼 파일에서 매퍼id가 수정되었을 경우 여기도 수정되어야 합니다 -->
					<form action="login.member" method="post">
						<h2 align="center">로그인</h2>
						<label for="memberID">아이디:</label> <input type="text"
							id="memberID" name="memberID" required value="apple"> <label
							for="memberPW">비밀번호:</label> <input type="password" id="password"
							name="memberPW" required value="1234">

						<button type="submit">로그인</button>
						<p>
							회원이 아니신가요? <a
								href="${pageContext.request.contextPath}/member/register">회원가입</a>
						</p>
					</form>
				</div>
			</div>
		</div>

	</main>

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
		src="${pageContext.request.contextPath}/resources/js/html5shiv.js"
		type="text/javascript"></script>

</body>
</html>
