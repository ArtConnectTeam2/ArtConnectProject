<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
	session.getAttribute("memberID");

    %>
    
<!DOCTYPE html>
<html>
<head>

<title>글 쓰기</title>
<%@ include file="/header.jsp" %>
</head>
<body>
		<%@ include file="/nav.jsp" %>
	
	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<h3>글 쓰기</h3><br>
	<div class="container">
	<form action="boardPostOk" id="form" enctype="multipart/form-data"
		  method="post">
		  <input type="hidden"  name="memberID" value="apple"> 
	제목: <input type="text" class="form-control-input-sm" name="reviewTitle" id="reviewTitle" size="96" style="height: 40px;">
	<br><br>
	<textarea name="reviewContent" id="reviewContent" rows="20" cols="150" placeholder="내용을 입력하세요"></textarea>
	<br><br>
	첨부파일:<input type="file" name="file"> <!-- 파일 업로드 입력란 -->
    <br><br>
	<span style="float: right;">
	<button type="submit" class="btn btn-primary">등록</button>
	</span>
	</form>
	</div>
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