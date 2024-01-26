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

/* 부트스트랩 스타일 추가 */
.form-check-input.star-input {
    display: none;
}

.form-check-label.star-label {
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
    cursor: pointer;
}

.form-check-label.star-label:hover {
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

.form-check-input.star-input:checked ~ .form-check-label.star-label {
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

.boardpost-container {
        background-color: #ffffff; /* 배경색을 원하는 색상으로 설정 */
        padding: 20px; /* 적절한 여백 설정 */
        border-radius: 10px; /* 원하는 형태의 모서리 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 설정 */
        max-width: 1100px; /* 원하는 최대 가로 너비 설정 */
        margin: 0 auto; /* 가운데 정렬을 위한 마진 설정 */
    }

#reviewTitle {
        border: 1px solid #ced4da; /* 테두리 추가 및 색상 지정 */
        border-radius: 4px; /* 테두리의 모서리를 둥글게 만듭니다. */
        padding: 10px; /* 내용과 테두리 사이의 간격을 지정합니다. */
        width: 95%;
        box-sizing: border-box; /* 테두리와 패딩을 포함한 전체 너비를 지정합니다. */
    }
    
</style>
<link rel="stylesheet" type="text/css" href="resources/css/star.css">
</head>
<body>
		<%@ include file="/nav.jsp" %>
	
	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	
	<div class="boardpost-container">
	<h1>글 쓰기</h1><br>
	<form action="boardPostOk" id="form" enctype="multipart/form-data"
		  method="post">
		  <input type="hidden"  name="memberID" value="${memberID}"> 
	제목: <input type="text" class="form-control-input-sm" name="reviewTitle" id="reviewTitle" size="96" style="height: 40px;">
	<br><br>
	<!-- 주차공간 유무 체크박스 -->
        <div class="form-check">
        <span class="parking-available-label">주차공간</span>
        <input class="form-check-input check" type="checkbox" name="parkingAvailable" value="true">
        <label class="form-check-label">있음</label>
        <input class="form-check-input check" type="checkbox" name="parkingAvailable" value="false">
        <label class="form-check-label">없음</label>
        </div>
           <!-- 별점 입력 -->
        <div>
            <span class="text-bold">별점을 선택해주세요</span>
            <input type="radio" name="starRating" value="5" id="rate1" class="form-check-input star-input">
    		<label for="rate1" class="form-check-label star-label">★</label>

    		<input type="radio" name="starRating" value="4" id="rate2" class="form-check-input star-input">
    		<label for="rate2" class="form-check-label star-label">★</label>

    		<input type="radio" name="starRating" value="3" id="rate3" class="form-check-input star-input">
    		<label for="rate3" class="form-check-label star-label">★</label>

    		<input type="radio" name="starRating" value="2" id="rate4" class="form-check-input star-input">
    		<label for="rate4" class="form-check-label star-label">★</label>

    		<input type="radio" name="starRating" value="1" id="rate5" class="form-check-input star-input">
    		<label for="rate5" class="form-check-label star-label">★</label>
        </div>
        
        <br><br>
	<textarea name="reviewContent" id="reviewContent" rows="20" cols="140" placeholder="내용을 입력하세요"></textarea>
	<br><br>
	첨부파일:<input type="file" name="file"> <!-- 파일 업로드 입력란 -->
    <br><br>
    
		<span style="float: right;">
	  		<button type="submit" class="btn btn-primary">등록</button>
	 	</span>
	 	<br><br><br>
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