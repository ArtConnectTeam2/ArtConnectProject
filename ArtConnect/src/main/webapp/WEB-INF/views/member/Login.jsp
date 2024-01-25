<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인 페이지</title>
<%@ include file="/header.jsp"%>

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
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 1000px;
	width: 100%;
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
	position: absolute;
	top: 10px;
	right: 10px;
}
</style>
</head>
<body>
	<!-- header -->
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


					<li class="nav-active">
					<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>


					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}" title="Contact">마이 페이지</a></li>
					

					<li><a href="${pageContext.request.contextPath}/notice/noticeList" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/qnaList" title="Contact">QnA</a></li>
					
					<% if ("서울시립미술관".equals(session.getAttribute("memberName"))) {%>
					<li><a href="${pageContext.request.contextPath}/gallery/programForm" title="Contact">프로그램 등록하기</a></li>
					<% } %>
				</ul>
				<br>
				
			</nav>
			
			<!-- nav -->
		
		</div>
		

	</header>

	<main role="main-home-wrapper" class="container">
		<!-- 메인 인삿말 -->
		<div class="row">
			<article role="pge-title-content">
				<header>
					<h2>
						<span>로그인 화면</span> 환영합니다
					</h2>
				</header>

			</article>

			<div class="clearfix"></div>

			<div class="contat-from-wrapper">


					<!-- 만약 매퍼 파일에서 매퍼id가 수정되었을 경우 여기도 수정되어야 합니다 -->
					<form action="login.member" method="post">
						<h2 align="center">로그인</h2>
						<label for="memberID">아이디:</label> <input type="text"
							id="memberID" name="memberID" required placeholder="아이디를 입력하세요"> <label
							for="memberPW">비밀번호:</label> <input type="password" id="memberPW"
							name="memberPW" required placeholder="비밀번호를 입력하세요">

						<button type="submit">로그인</button>
						<p>
							<c:if test="${not empty errorMessage}">
								<span style="color: red;">${errorMessage}</span>
							</c:if> <br>
							회원이 아니신가요? <a
								href="${pageContext.request.contextPath}/member/register">회원가입</a>
						</p>
					</form>
				</div>
			</div><!-- class= row -->


	</main>
	<%@ include file="/footer.jsp"%>
		
	<!-- JavaScript -->
	<%@ include file="/alljs.jsp"%>
	<script>
		function validateForm() {
			var memberID = document.getElementById("memberID").value;
			var memberPW = document.getElementById("memberPW").value;

			// 단순히 빈 값 여부만 확인하는 예제
			if (memberID.trim() !== "" && memberPW.trim() !== "") {
				return true; // 유효한 경우 폼 제출을 허용
			} else {
				alert("아이디와 비밀번호를 모두 입력해주세요.");
				return false; // 폼 제출을 차단
			}
		}
	</script>
</body>
</html>
