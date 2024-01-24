<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="kor">
<head>
<title>회원 가입 페이지</title>
<%@ include file="/header.jsp"%>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

input, select {
	width: 100%;
	padding: 20px;
	margin-bottom: 16px;
	box-sizing: border-box;
	font-size: 22px;
}

label {
	font-size: 20px;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

.navy {
	position: absolute;
	top: 10px;
	right: 10px;
}
</style>
</head>
<body>
	<!-- 메인 로고, 네비, 로그인-로그아웃 버튼 -->
	<%@ include file="/nav.jsp"%>

	<!-- 프로그램 폼 -->
	<main role="main-home-wrapper" class="container mt-5">
		<h1> ${memberName} 프로그램 추가하기</h1>
		<div class="container mt-3">
			<hr>
			<form action="programinsert" method="post">
    <h2 align="center">추가할 프로그램 정보</h2>

      <!-- 히든 필드로 galleryID 전달 -->
    <input type="hidden" id="galleryID" name="galleryID" value="4">
    
    <label for="programTitle">프로그램 제목:</label>
    <input type="text" id="programTitle" name="programTitle" required placeholder="프로그램명을 입력하세요" value="서울시 특별전">

      <!-- 히든 필드로 programImg 전달 -->
    <input type="hidden" id="programImg" name="programImg" value="notyet.png">
    
    <label for="artist">작가:</label>
    <input type="text" id="artist" name="artist" required value="홍길동">
    
    <!-- 히든 필드로 programTheme 전달 -->
    <input type="hidden" id="programTheme" name="programTheme" value="아무거나">

    <label for="programStart">전시 시작일:</label>
    <input type="date" id="programStart" name="programStart" required value="2023-12-13">

    <label for="programEnd">전시 종료일:</label>
    <input type="date" id="programEnd" name="programEnd" required value="2023-12-13">

    <!-- <label for="memberGender">선택하세요:</label>
    <select id="memberGender" name="memberGender" required>
        <option value="M">1</option>
        <option value="F">2</option>
        <option value=" ">입력하지않음</option>
    </select> -->

    <span style="color: red">성인 어린이 요금 구분이 없다면 성인요금만 입력해주세요.</span> <br>

    <label for="priceAdult">성인 요금:</label>
    <input type="text" id="priceAdult" name="priceAdult" value="10000">

    <label for="priceTeenager">청소년 요금:</label>
    <input type="text" id="priceTeenager" name="priceTeenager" value="5000">

    <label for="priceChild">어린이 요금:</label>
    <input type="text" id="priceChild" name="priceChild" required value="3000">

    <label for="programTel">담당자 전화 번호:</label>
    <input type="tel" id="programTel" name="programTel" value="10">

    <button type="submit" onclick="return showConfirmation()">등록하기</button>
</form>

		</div>
	</main>

	<!-- JavaScript -->
	<%@ include file="/alljs.jsp"%>
	<script>
    function showConfirmation() {
        // 사용자에게 확인 메시지를 띄우고 결과를 확인
        var confirmation = confirm('등록 후 미술관 조회 페이지로 넘어갑니다. 계속하시겠습니까?');

        // 확인이면 true 반환하여 폼을 제출하고, 취소이면 false 반환하여 제출을 취소
        return confirmation;
    }
</script>
	
</body>
</html>
