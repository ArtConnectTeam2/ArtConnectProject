<%@page import="com.multi.artConnect.review.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/header.jsp" %>

</head>
<body>
<%@ include file="/nav.jsp" %>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
글 등록이 완료되었습니다.
<a href="boardList">목록</a>
	</main>
	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="copy-right mt-4">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	
	<!-- JavaScript -->
	<%@ include file="/alljs.jsp" %>
</body>
</html>