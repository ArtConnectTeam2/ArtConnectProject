<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
</head>
<body>
 
	
	
	<h2 align="center">로그인이 완료되었습니다</h2>
	<p align="center">환영합니다! 
	아이디 : <%= session.getAttribute("memberID") %>로 로그인되었습니다. <br>
	<%= session.getAttribute("memberName") %>님 로그인이 성공적으로 완료되었습니다.</p>
	<a class="navbar-brand" href="${pageContext.request.contextPath}/gallery/main.jsp"> 
	<button>메인으로</button>
	</a>


</body>
</html>
