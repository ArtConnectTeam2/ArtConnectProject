<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header role="header">
		<div class="container">

			<!-- Art Connect logo -->
			<h1>
				<a href="${pageContext.request.contextPath}/gallery/main.jsp"
					title="Art Connect"><img
					src="${pageContext.request.contextPath}/resources/img/art.png"
					title="Art Connect" alt="Art Connect"
					style="max-width: 300px; max-height: 100px;" /></a>
			</h1>

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
			</nav>
		</div>
	</header>
