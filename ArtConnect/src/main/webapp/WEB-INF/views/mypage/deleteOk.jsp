<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div>
        <% String result = (String)request.getAttribute("result"); %>
        <% if ("deleteSuccess".equals(result)) { %>
            <p>회원 탈퇴 성공!</p>
        <% } else { %>
            <p>회원 탈퇴에 실패하였습니다. 다시 시도해주세요.</p>
        <% } %>
    </div>
탈퇴 성공!
</body>
</html>