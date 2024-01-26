<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="custom-header">
	<!-- 로고 -->
	<div class="logo">
		<a href="${pageContext.request.contextPath}/gallery/main.jsp"
			class="logo-link"> <img id="logo-image"
			src="${pageContext.request.contextPath}/resources/img/gallery/메인 홈페이지/art.png"
			title="art connect" alt="avana LLC" />
		</a>
	</div>

	<!-- 로그인 버튼 -->
	<%
		if (session.getAttribute("memberID") == null) {
	%>
	<div class="login" style="display: inline-block;">
		<a href="${pageContext.request.contextPath}/member/login">
			<button class="btn btn-danger" onclick="login()">로그인</button>
		</a>
	</div>
	<%
		} else {
	%>

	<!-- 로그아웃 버튼 -->
	<div class="login" style="display: inline-block;">
		<a href="${pageContext.request.contextPath}/member/Logout.jsp">
			<button class="btn btn-info">로그아웃</button>
		</a> <br>
	
		<a href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}"
			style="display: inline-block;"> <img id="my-image"
			src="${pageContext.request.contextPath}/resources/img/member/mymy.png">
		</a> <br>
		<span class="customer" >
		<%=session.getAttribute("memberName")%>님
		</span>
	</div>
	<%
		}
	%>
</div>

<!-- header -->
<header role="header">

	<nav role="header-nav" class="navy">

		<ul>
			<li class="nav-active"><a
				href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관
					조회 및 검색</a></li>

			<li><a
				href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp"
				title="About">예약</a></li>

			<li><a
				href="${pageContext.request.contextPath}/review/boardList"
				title="Blog">커뮤니티</a></li>

			<li><a
				href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}"
				title="Contact">마이 페이지</a></li>

			<li><a
				href="${pageContext.request.contextPath}/notice/noticeList"
				title="Contact">공지사항</a></li>

			<li><a href="${pageContext.request.contextPath}/notice/qnaList"
				title="Contact">QnA</a></li>

			<%
				if ("서울시립미술관".equals(session.getAttribute("memberName"))) {
			%>
			<li><a
				href="${pageContext.request.contextPath}/gallery/programForm"
				title="Contact">프로그램 등록하기</a></li>
			<%
				}
			%>
		</ul>
		<br>

	</nav>

	<!-- nav -->

</header>


<!-- header -->

