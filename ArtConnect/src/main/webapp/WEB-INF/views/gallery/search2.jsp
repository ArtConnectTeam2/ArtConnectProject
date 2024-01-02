<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<style>
    /* 전체 페이지 테마 */
    body {
        background-color: #bebcba; /* Violet */
        margin: 20px;
        font-family: 'Arial', sans-serif;
    }

    /* 포스트 스타일 */
    .post-container {
        max-width: 600px;
        margin: 0 auto;
        background-color: #c7c7de; /* Grey */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
        margin-bottom: 20px;
    }

    .post-info {
        font-weight: bold;
        margin-bottom: 10px;
        color: #000000; /* 검은색 */
        position: relative;
        overflow: hidden; /* 부모 요소에서 넘치는 부분을 숨김 */
    }

    /* 링크 스타일 */
    a {
        color: #383832; /* Grey */
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        color: #e75480; /* 인디고 */
    }

    hr {
        border: 2px solid #e75480; /* 미드나잇 블루 */
    }

    .post-info img {
        width: auto;
        max-width: 130px; /* 이미지 최대 너비 설정 */
        height: auto;
        max-height: 130px; /* 이미지 최대 높이 설정 */
        position: absolute;
        top: 50%;
        right: 10px; /* 텍스트와 이미지 사이 간격 조절 */
        transform: translateY(-50%); /* 이미지를 세로로 가운데로 이동 */
    }

    /* 검색 결과 헤더 스타일 */
    h2 {
        font-size: 24px;
        color: #e75480; /* 미드나잇 블루 */
        text-align: center;
        margin-bottom: 20px;
    }

    /* 처음 화면으로 돌아가기 버튼 스타일 */
    .back-btn {
        background-color: #e75480; /* 미드나잇 블루 */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        display: block;
        width: fit-content;
        margin: 20px auto 0; /* 위쪽 여백 추가 및 중앙 정렬 */
    }

    .back-btn:hover {
        background-color: #4682b4; /* 스틸 블루 */
    }
</style>

<head>
    <title>검색 결과</title>
    <!-- 스타일 및 기타 내용은 그대로 유지하거나 필요에 따라 수정하세요 -->
</head>
<body>
    <!-- 검색 결과를 표시할 부분 -->
    <div class="result-container">
        <c:if test="${not empty searchResult}">
            <input type="hidden" name="keyword" value="${param.name}">
            <h2>'${param.name}'에 대한 검색결과</h2>
            <c:forEach var="gallery" items="${searchResult}">
                <div class="post-container">
                    <div class="post-info">
                        <div>
                            미술관명 : <a href="list2?gallery_Id=${gallery.gallery_Id}">${gallery.name}</a> <br>
                            미술관 위치 : ${gallery.location} <br>
                            미술관 운영시간 : ${gallery.time_open} - ${gallery.time_close} <br>
                            미술관 휴관일 : ${gallery.closure} <br>
                            미술관 전화번호 : ${gallery.tel} <br>
                        </div>
                        <img src="resources/img/${gallery.img}" alt="${gallery.name} 이미지">
                    </div>
                    <hr color="#e75480">
                </div>
            </c:forEach>
        </c:if>
    </div>

    <div style="text-align: center; margin-top: 20px;">
        <a href="${pageContext.request.contextPath}/list" class="back-btn">이전 화면으로 돌아가기</a>
    </div>
</body>
</html>