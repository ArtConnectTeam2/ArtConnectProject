<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/header.jsp"%>
<style>
.container {
	background-color: white;
}
.center {
    text-align: center;
}
</style>
<title>회원가입 완료</title>
</head>
<body>
	<%@ include file="/nav.jsp"%>
	<main role="main-home-wrapper" class="container">
		<article role="pge-title-content">
			<h2 align="center">회원가입이 완료되었습니다</h2>
			<p align="center">환영합니다! 회원가입이 성공적으로 완료되었습니다.</p>
			<div class="center">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/member/login">
					<button>로그인 화면</button>
				</a>
			</div>
		</article>
	</main>
	<%@ include file="/alljs.jsp"%>
</body>
</html>
