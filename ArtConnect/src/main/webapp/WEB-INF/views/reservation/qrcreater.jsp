<%@ page import="java.util.Date"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>예약 정보 확인</title>
<%@ include file="/header.jsp"%>
<style>

dl {
    margin: 10px 0;
}

dl dt {
    font-weight: bold;
    margin-bottom: 5px;
}

dd {
	vertical-align: middle;
	margin-bottom: 20px;
}

.thumbnails-pan {
	min-width: 900px;
	max-width: 1000px;
	margin: 0 auto;
	height: 1300px;
    border: 1px solid #333333; 
    border-radius: 10px;
    padding: 30px;
    background-color: white;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
    margin-bottom: 200px;
}

    /* QR 코드 이미지와 정보를 수평으로 배치하는 컨테이너 스타일 */
.qr-info-container {
    display: block;
    align-items: center;
    justify-content: space-around;
    margin-top: 20px; /* 원하는 여백 값으로 조절하세요. */
}

/* QR 코드 이미지 스타일 */
#qrCodeImage {
    width: 500px; /* 원하는 크기로 조절하세요. */
    height: 500px;
    margin: 0 auto;
    display: block;
}

/* 첫 번째 dl 요소 스타일 */
.reservation-info dl:first-of-type {
    float: left; /* 좌측 정렬 */
    width: 45%; /* 전체 너비의 45%로 설정하여 우측 여백 확보 */
}

/* 두 번째 dl 요소 스타일 */
.reservation-info dl:last-of-type {
    float: right; /* 우측 정렬 */
    width: 45%; /* 전체 너비의 45%로 설정하여 좌측 여백 확보 */
}


/* 예약 정보 스타일 */
.reservation-info {
    max-width: 600px; /* 원하는 최대 너비로 조절하세요. */
    margin-left: 250px; /* 원하는 여백 값으로 조절하세요. */
}

.reservation-info h2 {
    font-size: 24px; /* 원하는 글꼴 크기로 조절하세요. */
}
    
.navy {
	position: fixed;
	top: 10px;
	right: 10px;
}
</style>
</head>
<body>
<%@ include file="/nav.jsp"%>
		<% String memberID = (String) session.getAttribute("memberID");
		int reservationID = (Integer) request.getAttribute("reservationID");
		String memberName = (String) session.getAttribute("memberName"); %>
   	<div class="thumbnails-pan" style="font-size: 20px;">
   		<h1>예약 확인 페이지</h1> <br>
		<h2>${member.memberName}님의 예약 정보입니다.</h2> <br>
    		<div class="prd_info_wrap">
    			<div class="prd_info">
    			<div class="qr-info-container">
    				<!-- QR코드 생성 부분 -->
    				<img id="qrCodeImage" src="" alt="QR Code"/>
    				<div class="reservation-info">
    				<dl>
						<dt>예약 번호</dt> 
						<dd>${reservationID}</dd>
						<dt>예약한 이름</dt>
						<dd>${member.memberName}</dd>
						<dt>예약한 미술관</dt>
						<dd>${gallery.galleryName}<dd>
						<dt>예약한 전시 목록</dt>
						<dd>${reservation.programTitle}</dd>
						<dt>관람 가능 시간</dt>
						<dd>${reservation.reservationTime}</dd>
					</dl>
					<dl>
						<dt>예약 날짜</dt>
						<dd>
							<fmt:formatDate value="${reservation.reservationDay}" pattern="yyyy-MM-dd"/> 
						</dd>
						<dt>성인</dt>
						<dd>${reservation.adultCount} 명</dd>
						<dt>학생</dt>
						<dd>${reservation.teenagerCount} 명</dd>
						<dt>아동</dt>
						<dd>${reservation.childCount} 명</dd>
						<dt>결제 금액</dt> 
						<dd>${reservation.totalPrice} 원</dd>
					</dl>
					</div> <!-- reservation-info -->
    			</div> <!-- qr-info-container -->
    			</div> <!-- prd_info -->
    		</div> <!-- prd_info_wrap -->
    	</div> <!-- thumbnails-pan -->
    <footer role="footer">
       	<nav role="footer-nav">
            <ul>
               	<li><a href="index.html" title="Work">Work</a></li>
                <li><a href="about.html" title="About">About</a></li>
                <li><a href="blog.html" title="Blog">Blog</a></li>
                <li><a href="contact.html" title="Contact">Contact</a></li>
            </ul>
        </nav>
        <!-- nav -->
        <ul role="social-icons">
         	<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
        </ul>
        <p class="copy-right">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
	</footer>
<script>
	// qr 코드 데이터 설정
	var memberID = '<%= memberID %>';
	var reservationID = '<%= reservationID %>';
	var qrData = memberID + '-' + reservationID;
	
	// Google Chart API를 통해 QR 코드 이미지 URL 생성
	var qrcreate = 'https://chart.googleapis.com/chart?chs=500x500&cht=qr&chl=' + encodeURIComponent(qrData);

	// qr코드 이미지를 표시할 위치에 소스 설정
	document.getElementById('qrCodeImage').src = qrcreate;
</script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
</body>
</html>