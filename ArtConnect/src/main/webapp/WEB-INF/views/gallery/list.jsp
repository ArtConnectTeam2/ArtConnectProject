<%@page import="com.multi.artConnect.gallery.GalleryVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>미술관 목록</title>
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

        /* 검색 폼 스타일 */
        .search-form {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 16px;
        }

        .search-form input[type="text"] {
            padding: 10px;
            width: 300px;
            border-radius: 5px;
            border: 1px solid #9191c4; /* Yellow */
            font-size: 16px;
        }

        .search-form button {
            background-color: #e75480; /* 변경된 색상 */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            font-weight: bold;
        }

        .search-form button:hover {
            background-color: #4682b4; /* 스틸 블루 */
        }
        
        /* 버튼 스타일 */
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
        
        .search-form button:hover {
            background-color: #4682b4;
            color: #4b0082; /* 검색 버튼 호버 시 글자색 변경 */
        }

        .back-btn:hover {
            background-color: #4682b4;
            color: #4b0082; /* 처음 화면으로 돌아가기 버튼 호버 시 글자색 변경 */
        }
    </style>
</head>
<body>
    <!-- 검색 폼 -->
<div class="search-form">
    <form action="${pageContext.request.contextPath}artConnect/search2" method="GET">
        <input type="text" name="name" placeholder="미술관명으로 검색" required>
        <button type="submit">검색</button>
    </form>
</div>

    <%
    	ArrayList<GalleryVO> list = (ArrayList<GalleryVO>)request.getAttribute("list"); 
            for(GalleryVO bag: list){
    %>
        <div class="post-container">
            <div class="post-info">
                <!-- 미술관 정보 -->
                <div>
                    미술관명 : <%= bag.getName() %> <br>
                    미술관 위치 : <%= bag.getLocation()%> <br>
                    미술관 운영시간 : <%= bag.getTime_open()%> <br>
                    미술관 운영시간 : <%= bag.getTime_close()%> <br>
                    미술관 휴관일 : <%= bag.getClosure()%> <br>
                    미술관 전화번호 : <%= bag.getTel()%> <br>
                </div>
                <!-- 미술관 이미지 -->
				<img src="resources/img/gallery<%= bag.getImg()%>" alt="<%= bag.getName() %> 이미지">
            </div>
            <hr color="#e75480">
        </div>
    <% } %>
<div style="text-align: center; margin-top: 20px;">
    <a href="${pageContext.request.contextPath}/gallery/museum.jsp" class="back-btn">처음 화면으로 돌아가기</a>
</div>
</body>
</html>