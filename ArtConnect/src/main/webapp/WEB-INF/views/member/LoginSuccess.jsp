<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
</head>
<body>
 
   로그인 성공!!!!! <br>
	아이디: <%= session.getAttribute("memberID") %>로 로그인되었습니다. <br>
	<%= session.getAttribute("memberName") %>님 환영합니다
	


</body>
</html>
