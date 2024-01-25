<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/header.jsp"%>
<style>
.main-container {
    /* main container 스타일 */
    background-color: white;
    padding: 20px;
    box-shadow: 0 0 5px rgba(255, 193, 7, 0.5);
}
.center {
    text-align: center;
}
</style>
<title>회원가입 완료</title>
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
		<article role="pge-title-content" class="main-container">
			<h2 align="center">회원가입이 완료되었습니다</h2>
			<p align="center">환영합니다! 회원가입이 성공적으로 완료되었습니다.</p>
			<div class="center">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/member/login">
					<button class="btn-gradient red small">로그인 화면</button>
				</a>
				 <a class="navbar-brand" href="${pageContext.request.contextPath}/gallery/main.jsp">
                <button class="btn-gradient yellow small">메인으로</button>
            </a>
			</div>
		</article>
	</main>
	<%@ include file="/alljs.jsp"%>
</body>
</html>
