<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    // 세션에 저장된 URL을 가져옴
    String lastURL = (String) session.getAttribute("lastURL");

    // 세션 무효화
    session.invalidate();

    // 저장된 URL로 리다이렉트
    if (lastURL != null && !lastURL.isEmpty()) {
        response.sendRedirect(lastURL);
    } else {
        // 만약 저장된 URL이 없으면 기본적으로 메인 페이지로 이동
        response.sendRedirect("/artConnect/gallery/main.jsp");
    }
%>