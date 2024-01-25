<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/header.jsp"%>

<style>
.main-container {
   
    background-color: white; 
    padding: 20px;
}
.center {
    text-align: center;
}
.center button {
    display: inline-block;
    margin-top: 20px; /* 원하는 여백 조절 */
}
</style>

</head>
<body>

	<%@ include file="/nav.jsp"%>

	<main role="main-home-wrapper" class="container">
		<article role="pge-title-content" class="main-container">
			<h2 align="center">로그인이 완료되었습니다</h2>
			<p align="center">
				아이디:
				<%=session.getAttribute("memberID")%>로 로그인되었습니다. <br>
				환영합니다!  <%=session.getAttribute("memberName")%>님 
			</p>
		</article>
		 <div class="center">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/gallery/main.jsp">
                <button class="btn-gradient red small">메인으로</button>
            </a>
        </div>
	</main>
	<br>
	
	<footer role="footer">

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
	<%@ include file="/alljs.jsp"%>



</body>
</html>