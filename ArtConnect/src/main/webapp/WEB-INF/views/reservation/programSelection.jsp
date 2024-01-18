<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta charset="utf-8">
    <title>전시 목록 페이지</title>
    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Responsive CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
	<style type="text/css">
        th, td {
            vertical-align: middle;
            text-align: center;
            padding: 10px;
        }

        /* Adjust width for exhibition name and artist */
        .program-row td:nth-child(2),
        .program-row td:nth-child(3) {
            max-width: 200px; /* Adjust the maximum width as needed */
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        /* Adjust width for price */
        .program-row td:nth-child(6) {
            min-width: 190px; /* Adjust the minimum width as needed */
        }
        .navy {
			position: absolute;
			top: 10px;
			right: 10px;
		}
		.pre-page {
			position: absolute;
			top: 20px;
			left: 10px;
		}
    </style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
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
	reservation/gallerySelection.jsp"> 미술관 목록으로 </a></h3>
         <!-- nav -->
    <nav role="header-nav" class="navy">
	<ul>
	<li><a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
    </ul>
	</nav>
    </div>
    </header>
    <footer role="footer" style="margin: 0 20px;">
        <div class="thumbnails-pan" style="font-size: 20px;">
            <h1 style="margin-top: -80px; margin-left: 10px">전시 목록</h1> <br>
            <h2 style="margin-left: 30px">${gallery.galleryName}</h2><br>
            <c:choose>
                <c:when test="${not empty listProgram}">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>전시 목록</th>
                                <th>전시 이름</th>
                                <th>작가</th>
                                <th>전시 기간</th>
                                <th>전시실</th>
                                <th>가격</th>
                                <th>연락처</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="program" items="${listProgram}">
                                <tr class="program-row">
                                    <td><a href="${pageContext.request.contextPath}/reservation/reservation/${program.galleryID}/${program.programID}">
                                    <img src="${pageContext.request.contextPath}/resources/img/program/${program.programImg}"
                                    alt="Program Image" style="width: 200px; height: auto;"></a></td>
                                    <td><a href="${pageContext.request.contextPath}/reservation/reservation/${program.galleryID}/${program.programID}">
                                    ${program.programTitle}</a></td>
                                    <td>${program.artist}</td>
                                    <td>
                                        <fmt:formatDate value="${program.programStart}" pattern="yyyy-MM-dd" /> 
                                        ~ 
                                        <fmt:formatDate value="${program.programEnd}" pattern="yyyy-MM-dd" />
                                    </td>
                                    <td>${program.programRoom}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${program.priceAdult > 0}">
                                                성인 : ${program.priceAdult}원<br/>
                                            </c:when>
                                            <c:otherwise>
                                                성인 : 무료<br/>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${program.priceTeenager > 0}">
                                                학생 : ${program.priceTeenager}원<br/>
                                            </c:when>
                                            <c:otherwise>
                                                학생 : 무료<br/>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${program.priceChild > 0}">
                                                아동 : ${program.priceChild}원<br/>
                                            </c:when>
                                            <c:otherwise>
                                                아동 : 무료<br/>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>${program.programTel}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <p>해당 미술관의 전시 정보가 없습니다.</p>
                </c:otherwise>
            </c:choose>
        </div>
    </footer>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
</body>
</html>
