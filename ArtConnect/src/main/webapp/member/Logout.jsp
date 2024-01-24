<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    session.invalidate(); // 세션을 무효로 만들다.

    // URL 파라미터에서 리다이렉트할 페이지 정보를 읽어옴
    String redirectPage = request.getParameter("redirectPage");

    // 만약 파라미터가 없다면 기본 페이지로 이동하도록 설정 (예: mainTest.jsp)
    if (redirectPage == null || redirectPage.isEmpty()) {
        redirectPage = "../gallery/main.jsp";
    }

    // 지정된 페이지로 리다이렉트
    response.sendRedirect(redirectPage);
%>