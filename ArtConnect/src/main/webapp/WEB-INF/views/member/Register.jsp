<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 페이지1</title>
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
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	align-items: center;
	justify-content: center;
	height: 100vh;
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
	background-color: #fff; /* 예시로 300px로 설정, 필요에 따라 조절 가능 */
}

label {
	margin-bottom: 8px;
}

input, select {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
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
			<!-- ArtConnect 로고 버튼 -->
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
	<form action="insert.member" method="post" name="joinForm">
		<h2 align="center">회원가입</h2>

		<label for="id">아이디:</label> <input type="text" id="memberID"
			name="memberID" required placeholder="아이디를 입력하세요"> 
		
		<!-- 중복확인 버튼 미구현 -->
<!-- 		<input type="button" value="아이디 중복 확인" onclick="checkId()"> <label id="label1"></label> -->
		<c:if test="${not empty errorMessage}">
			<div class="error-message">${errorMessage}</div>
		</c:if>

		<label for="pw">비밀번호:</label> <input type="password" id="pw"
			name="memberPW" required value="1234"> <label for="pwConfirm">비밀번호
			확인:</label> <input type="password" id="pwConfirm" name="pwConfirm" required
			value="12345"> <label for="name">이름:</label> <input
			type="text" id="name" name="memberName" required value="홍길동">
		<label for="birth">생년월일:</label> <input type="date" id="birth"
			name="memberBirth" required value="2023-12-13"> <label
			for="gender">성별:</label> <select id="gender" name="memberGender"
			required>
			<option value="M">남성</option>
			<option value="F">여성</option>
			<option value=" ">입력하지않음</option>
		</select> <label for="addr">주소:</label> <input type="text" id="addr"
			name="memberAddr" value="1234"> <label for="tel">전화번호:</label>

		<input type="tel" id="tel" name="memberTel"> <label
			for="email">이메일:</label> <input type="email" id="email"
			name="memberEmail" required value="123@gmail.com"> <label
			for="alarm">알람 설정:</label> <input type="text" id="alarm"
			name="memberAlarm">

		<button type="submit" onclick="joinMember()">회원가입</button>


	</form>

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

	<!-- 회원가입 버튼을 누를 시 체크사항 -->
	<script type="text/javascript">
		function joinMember() {

		/* 	var joinForm = document.joinForm;
			var memberID = document.getElementById("memberID").value; */
			var pw = document.getElementById("pw").value;
			var pwConfirm = document.getElementById("pwConfirm").value;
			/* var name = document.getElementById("name").value;
			var birth = document.getElementById("birth").value;
			var gender = document.getElementById("gender").value;
			var email = document.getElementById("email").value; */

			// 비밀번호 확인
			if (pw !== pwConfirm) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;

			}
		}
	</script>


</body>
</html>
