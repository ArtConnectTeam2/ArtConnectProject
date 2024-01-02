<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>미술관 상세 정보 요청</title>

    <style>
        /* 전체 페이지 테마 */
        body {
            background-color: #bebcba; /* Violet */
            color: #000000; /* Black */
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        /* 링크 스타일 */
        a {
            color: #9191c4; /* Yellow */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #e75480; /* Violet */
        }

        hr {
            border: 2px solid #c7c7de; /* Grey */
        }

        /* 폼 스타일 */
        form {
            margin-top: 20px;
            max-width: 400px;
            background-color: #fffaf0; /* 플로랄 화이트 */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
            margin-left: auto;
            margin-right: auto;
        }

        input {
            text-align: center;
            padding: 10px;
            margin: 10px 0;
            width: 100%;
            box-sizing: border-box;
        }

        button {
            background-color: #87cefa; /* 라이트 스카이 블루 */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #4682b4; /* 스틸 블루 */
        }

        /* 미술관 전체 목록 */
        .link {
            font-size: 24px; /* 글꼴 크기 */
            display: block; /* 블록 요소로 설정 */
            text-align: center; /* 가운데 정렬 */
        }
    </style>

</head>
<body>
    <div style="text-align: center;">
        <img src="resources/img/seoul.jpg" class="img-fluid mb-4" alt="Payco Logo">
    </div>
    <hr color="#c7c7de">
    <a href="gallery/list" class="link">서울시 미술관 목록</a><br>
</body>
</html>