<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>

<title>글 쓰기</title>
<%@ include file="/header.jsp" %>

<style>
/* 체크박스 스타일 */
.form-check-input {
    /* 원하는 스타일 속성을 추가하세요 */
    width: 20px; /* 체크박스의 너비 */
    height: 20px; /* 체크박스의 높이 */
    margin-right: 10px; /* 체크박스 간격 조정 */
    display: inline-block; /* inline-block으로 설정하여 화면에 표시 */
    border: 2px solid #FB5353; /* 테두리 스타일 설정 */
}

.form-check-input:checked {
    background-color: #FB5353; /* 체크됐을 때의 배경색 설정 */
    border: 2px solid #FB5353; /* 체크됐을 때의 테두리 스타일 설정 */
}

.form-check-input:not(:checked) {
    background-color: transparent; /* 체크되지 않았을 때의 배경색 설정 */
}
</style>
</head>
<body>
		<%@ include file="/nav.jsp" %>
	
	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<h3>글 쓰기</h3><br>
	<div class="container">
	<form action="boardPostOk" id="form" enctype="multipart/form-data"
		  method="post">
		  <input type="hidden"  name="memberID" value="${memberID}"> 
	제목: <input type="text" class="form-control-input-sm" name="reviewTitle" id="reviewTitle" size="96" style="height: 40px;">
	<br><br>
	<!-- 주차공간 유무 체크박스 -->
        <div class="form-check"style="padding-left : 15px;">
        <span class="parking-available-label">주차공간 유무</span>
        <input class="form-check-input check" type="checkbox" name="parkingAvailable" value="true">
        <label class="form-check-label">있음</label>
        <input class="form-check-input check" type="checkbox" name="parkingAvailable" value="false">
        <label class="form-check-label">없음</label>
        </div>
        <br><br>
	<textarea name="reviewContent" id="reviewContent" rows="20" cols="150" placeholder="내용을 입력하세요"></textarea>
	<br><br>
	첨부파일:<input type="file" name="file"> <!-- 파일 업로드 입력란 -->
    <br><br>
	<span style="float: right;">
	<button type="submit" class="btn btn-primary">등록</button>
	</span>
	</form>
	</div>
	</main>
	
	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="copy-right mt-4">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	
	<!-- JavaScript -->
	<%@ include file="/alljs.jsp" %>
	</body>
</html>