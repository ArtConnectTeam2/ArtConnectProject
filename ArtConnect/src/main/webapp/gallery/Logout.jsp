<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// id를삭제! ==> session 내장객체 
	session.invalidate(); //세션을 무효로 만들다.!
	//첫페이지로 넘어가자.! ==> 서버가브라우저에 명령하면 됨.
	//response 내장객체 이용!
	response.sendRedirect("main.jsp");
%>