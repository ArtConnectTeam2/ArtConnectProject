<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">
<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/reservation/style.reservation.css"	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Responsive CSS -->
<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js" type="text/javascript"></script>

<!-- js로 gallery 정보 보내기 -->
<script>
    let gallery = {
        galleryOpentime: '<fmt:formatDate value="${gallery.galleryOpentime}" pattern="HH:mm"/>',
        galleryClosetime: '<fmt:formatDate value="${gallery.galleryClosetime}" pattern="HH:mm"/>'
    };
    let closedDay = '${gallery.closedDay}';
    let closedDays = closedDay.split(', ');
</script>

<script src="${pageContext.request.contextPath}/resources/js/reservation/calendar.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/reservation/reservation.js"></script>
<title>예약 페이지</title>

</head>
<body>
	<div class="login" style="display: block; text-align: right; margin-top: 75px; margin-right: 20px;">
		<% String memberID = (String) session.getAttribute("memberID");
		Date reservationDay = (Date) request.getAttribute("reservationDay");
		String memberName = (String) session.getAttribute("memberName");
			if (memberID == null || memberID.equals("")) { %>
			<a href="${pageContext.request.contextPath}/member/login">
				<button class="btn btn-danger" onclick="login()">로그인</button>
			</a>
		<% } else { %>
			<!-- 로그아웃 버튼 -->
			<%= memberName %>님 환영합니다.<br>
			<a href="${pageContext.request.contextPath}/member/Logout.jsp?redirectPage=../reservation/reservation/${gallery.galleryID}/${program.programID}">
				<button class="btn btn-info">로그아웃</button>
			</a>
		<% } %>
	</div>
	<header role="header" style="margin-top: -100px; margin-left: 0px;">
        <div class="container" style="display: inline-block; max-width: 50%;">
            <!-- Logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp">
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/></a>
            </h1>
			<h3 class="pre-page"><a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}"> 전시 목록으로 </a></h3>
    <!-- nav -->
    <nav role="header-nav" class="navy">
	<ul>
	<li>
	<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/noticeList" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/qnaList" title="Contact">QnA</a></li>
    </ul>
	</nav>
	<!-- nav -->
    </div>
    </header>
    <footer role="footer" style="margin: 0 20px;">
    <div class="thumbnails-pan" style="font-size: 20px;">
	<h1 style="margin-top: -80px; margin-left: 10px">예약 페이지</h1> <br>
	<h2 style="margin-left: 30px">${gallery.galleryName}</h2> <br>
	<div class="prd_info_wrap">
    <div class="thumb" style="text-align: center; display: flex; flex-direction: column; align-items: center;">
        <img src="${pageContext.request.contextPath}/resources/img/program/${program.programImg}" alt="Program Image"
        style="max-width: 80%; min-width: 350px; height: 350px;">
        <h2 style="margin-top: 30px;"><strong>${program.programTitle}</strong></h2>
    </div>
    <div class="prd_info">
        <dl>
    <dt>전시 기간</dt> 
    <dd><fmt:formatDate value="${program.programStart}" pattern="yyyy-MM-dd" />
    ~ <fmt:formatDate value="${program.programEnd}" pattern="yyyy-MM-dd" /></dd>
    <dt>관람 시간</dt>
    <dd><fmt:formatDate value="${gallery.galleryOpentime}" pattern="HH:mm"/> 
    ~ <fmt:formatDate value="${gallery.galleryClosetime}" pattern="HH:mm"/></dd>
    <dt>관람실</dt> 
    <dd>${program.programRoom}</dd>
    <c:if test="${fn:length(program.artist) > 0}">
    	<dt>작가</dt>
    	<dd>${program.artist}</dd>
    </c:if>
    <dt>관람료</dt>
<dd>
    <c:choose>
        <c:when test="${program.priceAdult > 0}">
            성인 : <span class="priceAdult">${program.priceAdult}</span>원<br />
        </c:when>
        <c:otherwise>
            성인 : <span class="priceAdult">무료</span><br />
        </c:otherwise>
    </c:choose>
    <c:choose>
        <c:when test="${program.priceTeenager > 0}">
            학생 : <span class="priceTeenager">${program.priceTeenager}</span>원<br />
        </c:when>
        <c:otherwise>
            학생 : <span class="priceTeenager">무료</span><br />
        </c:otherwise>
    </c:choose>
    <c:choose>
        <c:when test="${program.priceChild > 0}">
            아동 : <span class="priceChild">${program.priceChild}</span>원<br />
        </c:when>
        <c:otherwise>
            아동 : <span class="priceChild">무료</span><br />
        </c:otherwise>
    </c:choose>
</dd>
	<c:set var="dayOfWeek" value="${gallery.closedDay}" />
	<c:set var="closedDays" value="${fn:split(dayOfWeek, ', ')}" />
	<dt>휴무일</dt>
	<dd>매주
	<c:forEach var="day" items="${closedDays}" varStatus="loop">
	<c:set var="koreanDay" value="" />
	<c:choose>
	<c:when test="${day eq 'Monday'}">
	<c:set var="koreanDay" value="월" />
	</c:when>
	<c:when test="${day eq 'Tuesday'}">
	<c:set var="koreanDay" value="화" />
	</c:when>
	<c:when test="${day eq 'Wednesday'}">
	<c:set var="koreanDay" value="수" />
	</c:when>
	<c:when test="${day eq 'Thursday'}">
	<c:set var="koreanDay" value="목" />
	</c:when>
	<c:when test="${day eq 'Friday'}">
	<c:set var="koreanDay" value="금" />
	</c:when>
	<c:when test="${day eq 'Saturday'}">
	<c:set var="koreanDay" value="토" />
	</c:when>
	<c:when test="${day eq 'Sunday'}">
	<c:set var="koreanDay" value="일" />
	</c:when>
	</c:choose>
	${koreanDay}<c:if test="${!loop.last}">,</c:if><c:if test="${loop.last}"></c:if></c:forEach>요일
	</dd>
	<dt>연락처</dt>
	<dd>${program.programTel}</dd>
</dl>
</div> <!-- prd_info -->
    
    <!-- calendar -->
    <div id = "calendar-container">
    <div id = "calendar-header">
    	<button id="prev-month">＜</button>
    	<span id="calendar-title"></span>
    	<button id="next-month">＞</button>
	</div>
    <table id = "calendar">
		<thead>
            <tr>
                <th>일</th>
                <th>월</th>
                <th>화</th>
                <th>수</th>
                <th>목</th>
                <th>금</th>
                <th>토</th>
            </tr>
        </thead>
        <tbody>
            <!-- 달력 함수 호출 부분 -->
        </tbody>
    </table>
    <!-- 인원 수 및 총 가격 표시 -->
<div class="table-container">
    <table>
    <tr class="input-row">
        <td><label for="adultCount">성인 인원 수 :</label></td>
        <td>
            <button type="button" class="round-button" onclick="decreaseAdultCount()">-</button>
            <input id="adultCount" class="input-field" value="0" readonly style="border:none; background-color:transparent;">
            <button type="button" class="round-button" onclick="increaseAdultCount()">+</button>
        </td>
    </tr>
    <tr class="input-row">
        <td><label for="teenagerCount">학생 인원 수 :</label></td>
        <td>
            <button type="button" class="round-button" onclick="decreaseTeenagerCount()">-</button>
            <input id="teenagerCount" class="input-field" value="0" readonly style="border:none; background-color:transparent;">
            <button type="button" class="round-button" onclick="increaseTeenagerCount()">+</button>
        </td>
    </tr>
    <tr class="input-row">
        <td><label for="childCount">아동 인원 수 :</label></td>
        <td>
            <button type="button" class="round-button" onclick="decreaseChildCount()">-</button>
            <input id="childCount" class="input-field" value="0" readonly style="border:none; background-color:transparent;">
            <button type="button" class="round-button" onclick="increaseChildCount()">+</button>
        </td>
    </tr>
    <tr class="input-row">
        <td colspan="3"><span class="totalPrice">총 가격: 0원</span></td>
    </tr>
    </table>
</div> <!-- table-calendar -->
    <div id = "calendar-footer">
    	<span id = "date">날짜를 선택해주세요.</span>
    	<span id = "message"></span>
    	<span id = "remain"></span>
    	<button class="reservation-button">예약하기</button>
    </div>
    </div> <!-- calendar-container -->
</div> <!-- prd_info_wrap -->

    <!-- 예약 폼 추가 (숨김) -->
<form action="${pageContext.request.contextPath}/reservation/confirm" method="post" style="display: none;">
    <input type="hidden" name="galleryID" value="${gallery.galleryID}">
    <input type="hidden" name="programID" value="${program.programID}">
    <input type="hidden" name="programTitle" value="${program.programTitle}">
    <input type="hidden" name="reservationTime" value="<fmt:formatDate value="${gallery.galleryOpentime}" pattern="HH:mm"/> ~ <fmt:formatDate value="${gallery.galleryClosetime}" pattern="HH:mm"/>">
    <input type="hidden" name="adultCount" value="0">
    <input type="hidden" name="teenagerCount" value="0">
    <input type="hidden" name="childCount" value="0">
    <input type="hidden" name="totalPrice" value="0">
</form>


	</div> <!-- thumbnails-pan -->
	</footer>
	
	<script>
	// 버튼 클릭 이벤트 설정
	document.getElementById("prev-month").addEventListener("click", changePrevMonth);
	document.getElementById("next-month").addEventListener("click", changeNextMonth);
	
	// 현재 날짜 기준 달력 생성
	createCalendar(currentYear, currentMonth);
	
	</script>
<script>

let totalReserved;
let totalCount;
let isAvailable;

//날짜 클릭 시 totalReserved를 가져와서 remain에 표시하는 함수
function updateTotalReserved(reservationDay) {
    
    // 서버에 해당 날짜의 totalReserved를 요청하고 결과를 remain에 표시
    $.ajax({
        url: `${program.programID}/updateTotalReserved`,
        method: 'GET',
        data: {	reservationDay: new Date(reservationDay) },
        success: function(data) {
            totalReserved = data.totalReserved; // 서버에서 받아온 totalReserved 값

            // totalReserved와 remainCapacity를 표시
            document.getElementById('remain').innerText = "남은 예약 인원 수 : "+totalReserved+"/300";
        },
        error: function(error) {
            console.error('Error fetching totalReserved:', error);
        }
    });
}

const reservationButton = document.querySelector('.reservation-button');
reservationButton.addEventListener('click', function() {
	
    // 날짜 데이터
	const dateElement = document.getElementById('date');
    const dateString = dateElement.innerText.trim(); // "YYYY-MM-DD (day)" 양식
    const dateParts = dateString.split(' '); // [YYYY-MM-DD, day]
    const selectedDate = dateParts[0]; // YYYY-MM-DD
    const reservationDay = new Date(selectedDate);
    
    const memberID = '<%= memberID %>';
    const adultCount = parseInt(document.getElementById('adultCount').value);
    const teenagerCount = parseInt(document.getElementById('teenagerCount').value);
    const childCount = parseInt(document.getElementById('childCount').value);
    
    isAvailable = totalReserved >= adultCount + teenagerCount + childCount;
    
    if (dateElement.innerHTML === '날짜를 선택해주세요.') {
        alert('날짜를 선택해주세요.');
    } else if (adultCount === 0 && teenagerCount === 0 && childCount === 0) {
    	alert('예약하실 인원을 최소 한 명 선택해주세요.');
    	return; // 인원 수가 0이면 더 이상 진행하지 않음
    } else if (memberID == "null") {
    	alert('예약 기능은 로그인 상태에서 이용하실 수 있습니다.')
    } else {
    	const totalPrice = parseInt(document.querySelector('.totalPrice').innerText.replace(/[^0-9]/g, ''));
        // 예약 데이터 생성
        const reservationData = {
            'galleryID': document.querySelector('input[name="galleryID"]').value,
            'programID': document.querySelector('input[name="programID"]').value,
            'memberID': memberID,
            'programTitle': document.querySelector('input[name="programTitle"]').value,
            'payment': false,
            'reservationTime': document.querySelector('input[name="reservationTime"]').value,
            'reservationDay': reservationDay,
            'totalPrice': totalPrice,
            'adultCount': adultCount,
            'teenagerCount': teenagerCount,
            'childCount': childCount,
            'totalCount': adultCount + teenagerCount + childCount
        };
        
        // 최종 확인 창 표시
        const confirmationMessage = "성인 " + adultCount + "명, 학생 " + teenagerCount + "명, 아동 " + childCount + "명\n가격은 " + totalPrice + "원 입니다. 예약하시겠습니까?";
        
        if (!isAvailable) {
        	alert('최대 예약 가능 인원 수를 초과하였습니다.\n다른 날짜를 선택해주세요.')
        } else if (confirm(confirmationMessage)) {
        // 서버에 POST 요청 보내기
        	$.ajax({
            	url: `${program.programID}/insertReservation`,
	            method: 'POST',
	            contentType: 'application/json', 
	            data: JSON.stringify(reservationData), 
	            success: function(response) {
	                console.log('Success:', response.reservationID);
	           		alert('예약 성공');
	           		
	           		window.location.href = '/artConnect/reservation/qrcreater/'+response.reservationID+'?memberID='+memberID;
				},
	            error: function(error) {
	                if (error.responseText.includes('Duplicate entry')) {
	                	alert('해당 아이디로 이미 예약한 기록이 있습니다.')
	           		} else {
	           			alert('알 수 없는 오류로 예약에 실패했습니다. 다시 시도해주세요.')
	           		}
	            }
	        });
        } else {
        	alert('예약이 취소되었습니다.');
        }
    }
});
</script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
</body>
</html>
