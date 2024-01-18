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
</script>

<script src="${pageContext.request.contextPath}/resources/js/reservation/calendar.js"></script>
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
        <img src="${pageContext.request.contextPath}/resources/img/program/${program.programImg}" alt="Program Image"
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
            <dt>휴무일</dt>
            <dd>매주 ${gallery.closedDay}요일</dd>
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
    <div id = "date">날짜를 선택해주세요.</div>
    <div id = "message"></div>
    <button class="reservation-button">예약하기</button>
    </div> <!-- calendar-container -->
	</div> <!-- prd_info_wrap -->
	</div> <!-- thumbnails-pan -->
	</footer>
	<script>
	
	// 버튼 클릭 이벤트 설정
	document.getElementById("prev-month").addEventListener("click", changePrevMonth);
	document.getElementById("next-month").addEventListener("click", changeNextMonth);
	
	// 현재 날짜 기준 달력 생성
	createCalendar(currentYear, currentMonth);
	
	</script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
</body>
</html>
