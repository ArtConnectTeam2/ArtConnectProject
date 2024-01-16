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
<link href="${pageContext.request.contextPath}/resources/css/
	reservation/style.reservation.css"	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Responsive CSS -->
<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js" type="text/javascript"></script>
<title>예약 페이지</title>

</head>
<body>
	<header role="header">
        <div class="container">
            <!-- Logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp">
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/></a>
            </h1>
			<h3 class="pre-page"><a href="${pageContext.request.contextPath}/
				reservation/programSelection/${gallery.galleryID}"> 전시 목록으로 </a></h3>
    <!-- nav -->
    <nav role="header-nav" class="navy">
	<ul>
	<li>
	<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
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
    <div class="thumb" style="text-align: center;">
        <img src="${pageContext.request.contextPath}/${program.programImg}" alt="Program Image"
        style="width: 350px; height: auto;">
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
                        성인 : ${program.priceAdult}원<br />
                    </c:when>
                    <c:otherwise>
                        성인 : 무료<br />
                    </c:otherwise>
                </c:choose> 
                <c:choose>
                    <c:when test="${program.priceTeenager > 0}">
                        학생 : ${program.priceTeenager}원<br />
                    </c:when>
                    <c:otherwise>
                        학생 : 무료<br />
                    </c:otherwise>
                </c:choose> 
                <c:choose>
                    <c:when test="${program.priceChild > 0}">
                        아동 : ${program.priceChild}원<br />
                    </c:when>
                    <c:otherwise>
                        아동 : 무료<br />
                    </c:otherwise>
                </c:choose>
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
    </div> <!-- calendar-container -->
	</div> <!-- prd_info_wrap -->
	<button class="reservation-button">예약하기</button>
	</div> <!-- thumbnails-pan -->
	</footer>
	<script>
	
	// 초기 연도, 월, 일
	var initial = new Date();
	var initialYear = initial.getFullYear();
	var initialMonth = initial.getMonth()+1;
	var initialDate = initial.getDate()+5;
	
	// 현재 연도, 월, 일
	var currentYear = initialYear;
	var currentMonth = initialMonth;
	var currentDate = initialDate;
	
	// 오늘의 날짜를 업데이트하는 함수
	function updateToday() {
		var today = new Date();
		var initialYear = today.getFullYear();
		var initialMonth = today.getMonth()+1;
		var initialDate = today.getDate()+5;
	}
	
	// 달력 만드는 함수
	function createCalendar(year, month) {
		updateToday();
		
		var firstDay = new Date(year, month, 1);
		var lastDay = new Date(year, month + 1, 0);
		var daysInMonth = lastDay.getDate();
		var startingDay = firstDay.getDay(); // 월의 첫째 날에 대한 요일 (0(일)~6(토))

		var tableBody = document.getElementById("calendar").getElementsByTagName('tbody')[0];
		tableBody.innerHTML = ''; // 이전 내용 초기화

		var date = 1; // 이번 달의 시작 날짜
		var nextDate = 1; // 다음 달의 시작 날짜
		
		// 각 주의 바깥 루프
		for (var i = 0; i < 6; i++) {
    		var row = tableBody.insertRow(i);

    	// 각 일의 안쪽 루프
    		for (var j = 0; j < 7; j++) {
        		var cell = row.insertCell(j);

        		if (i === 0 && j < startingDay) {
                    cell.innerHTML = "";
        		} else if (date > daysInMonth) {
        			cell.innerHTML = nextDate;
        			
        			// 날짜가 오늘로부터 2주 이내인 경우 클릭 이벤트 추가
					var nextDateObj = new Date(year, month + 1, nextDate);
        			var today = new Date(initialYear, initialMonth, currentDate);
        			var diffTime = Math.abs(nextDateObj - today);
        			var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
        			
        			if (diffDays <= 13) {
        				cell.style.fontWeight = "bold";  // 글씨를 굵게
        				cell.style.background = "white";  // 배경을 흰색으로
        				
        				cell.addEventListener('click', function() {
        					// 클릭 이벤트 핸들러 코드 작성
        					console.log('날짜를 클릭했습니다.');
        					});
        				} else {
                	          cell.style.background = "lightgray";  // 배경을 옅은 회색으로
              	        }
            			nextDate++;
        			} else {
        			cell.innerHTML = date;
        			
        			// 날짜가 오늘로부터 2주 이내인 경우 클릭 이벤트 추가
        	        if (year === initialYear && month === initialMonth && date >= currentDate && date <= currentDate + 13) {
        	          cell.style.fontWeight = "bold";  // 글씨를 굵게
        	          cell.style.background = "white";  // 배경을 흰색으로

        	          cell.addEventListener('click', function() {
        	            // 클릭 이벤트 핸들러 코드 작성
        	            console.log('날짜를 클릭했습니다.');
        	          });
        	        } else {
        	          cell.style.background = "lightgray";  // 배경을 옅은 회색으로
        	        }
        			date++;
        		} // if-else if-else
    		} // for 안쪽 루프
		} // for 바깥 루프
		
		// 달력 헤더에 연도와 월 표시
		document.getElementById("calendar-title").innerText = year + "년 " + (month + 1) + "월";
	} // function createCalendar
	
	// 달을 변경하는 함수
	function changeMonth(increment) {
		currentMonth += increment;
		
		if (currentMonth < 0) {
			currentMonth = 11;
			currentYear--;
		} else if (currentMonth > 11) {
			currentMonth = 0;
			currentYear++;
		}
		createCalendar(currentYear, currentMonth);
	}
	
	// 이전 달로 이동하는 함수
	function prevMonth() {
		changeMonth(-1);
	}
		
	// 다음 달로 이동하는 함수
	function nextMonth() {
		changeMonth(+1);
	}
	
	// 버튼 클릭 이벤트 설정
	document.getElementById("prev-month").addEventListener("click", prevMonth);
	document.getElementById("next-month").addEventListener("click", nextMonth);

	// 2024년 1월 생성하기
	createCalendar(currentYear, currentMonth);
	
	</script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
</body>
</html>
