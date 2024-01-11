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
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Responsive CSS -->
<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
<!-- FullCalendar CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css">
<!-- FullCalendar JavaScript 및 의존성 라이브러리(jQuery) -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale-all.js"></script>
<style type="text/css">
dd {
vertical-align: middle;
margin-bottom: 20px;
	}
.prd_info_wrap {
    display: flex;
    grid-template-columns: 2fr 1fr;
    padding: 10px;
    margin-bottom: 20px;
}
.thumb {
    flex: 1.5;
}
.prd_info {
	margin-left: 30px;
    flex: 2;
}
.prd_info .title h3 {
    font-size: 20px;
    font-weight: bold;
}
.prd_info dl {
    margin: 10px 0;
}
.prd_info dl dt {
    font-weight: bold;
    margin-bottom: 5px;
}
#calendar {
    width: 30%; /* 원하는 너비로 조정하세요 */
    height: 40%; /* 원하는 높이로 조정하세요 */
    float: right;
  }
.fc-day {
        height: 10px; /* 원하는 높이로 조정하세요 */
    }
.reservation-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #000;
	color: #fff;
	border-radius: 10px;
	text-decoration: none;
	cursor: pointer;
	position: absolute;
	bottom: 450px;
	right: 100px;
}
</style>
<title>예약 페이지</title>
<script>
    $(document).ready(function () {
        // FullCalendar 초기화
        $('#calendar').fullCalendar({
            // 달력 옵션 및 설정
            defaultView: 'month', // 기본 뷰를 'month'로 설정
            header: {
                left: 'prev',
                center: 'title',
                right: 'next'
            },
            locale: 'ko', // 한국어로 설정
            events: [
                // 이벤트 데이터를 동적으로 추가 (program.programStart 및 program.programEnd에 맞게 수정)
                {
                    title: '${program.programTitle}',
                    start: '${program.programStart}', // 시작 날짜
                    end: '${program.programEnd}',     // 종료 날짜
                    url: '#'                          // 클릭 시 이동할 URL
                }
            ]
        });
    });
</script>
</head>
<body>
	<header role="header">
        <div class="container">
            <!-- Logo -->
            <h1>
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/>
            </h1>
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
    <div id="calendar"></div>
	</div> <!-- prd_info_wrap -->
	<button class="reservation-button">예약하기</button>
	</div> <!-- thumbnails-pan -->
	</footer>
</body>
</html>
