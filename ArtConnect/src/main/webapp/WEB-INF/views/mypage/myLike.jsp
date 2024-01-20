<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	session.setAttribute("memberID", "apple");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 Like 목록</title>
<%@ include file="/header.jsp"%>
</head>
<body>
	<%@ include file="/logoMypage.jsp"%>
	<!-- 사이드 마이페이지 탭 -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="sidebar">
					<h3>마이페이지</h3>
					<ul class="nav flex-column">
					  <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="updateOne?memberID=${memberID}">회원정보수정</a>
                        </li>
                             <li class="nav-item">
                        <a class="nav-link" href="updatePw?memberID=${memberID}">비밀번호 변경</a>     
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="deleteOne?memberID=${memberID}">회원탈퇴</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReservation?memberID=${memberID}">내 예약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReview?memberID=${memberID}">내 리뷰</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="myLike?memberID=${memberID}">좋아요</a>
                        </li>
					</ul>
				</div>

			</div>
			<!-- sidebar -->

			<!-- main content -->
			<div class="col-md-9">
				<div class="update-content">
					<h2>내가 Like한 목록</h2>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="100px">좋아요 번호</th>
								<th>갤러리 이름</th>
								<!-- 추가적인 항목이 있다면 추가 -->
							</tr>
						</thead>
						<tbody>
							<c:forEach var="likeInfo" items="${likesList}">
								<tr>
									<td>${likeInfo.likesNO}</td>
									<td><a
										href="${pageContext.request.contextPath}/gallery/detail?galleryName=${likeInfo.galleryName}">
											${likeInfo.galleryName} </a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<footer role="footer">
		<!-- logo -->
		<!--    <h1>
                    <a href="index.html" title="Art Connect"><img src="resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px;"/></a>
                </h1>
 -->

		<!-- nav -->
		<nav role="footer-nav">
			<ul>
				<li><a href="index.html" title="Work">Work</a></li>
				<li><a href="about.html" title="About">About</a></li>
				<li><a href="blog.html" title="Blog">Blog</a></li>
				<li><a href="contact.html" title="Contact">Contact</a></li>
			</ul>
		</nav>

		<!-- nav -->
		<ul role="social-icons">
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
		</ul>
		<p class="copy-right">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>
	</footer>
</body>
</html>