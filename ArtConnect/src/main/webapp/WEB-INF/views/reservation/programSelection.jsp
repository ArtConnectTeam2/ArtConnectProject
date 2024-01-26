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

i {
	margin-top: 12px;
}

footer {
    bottom: 0;
    width: 100%;
    border-top: 1px solid #ddd;
}

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
	position: fixed;
	top: 10px;
	right: 10px;
}

#program-container {
	font-size: 20px;
	min-width: 1000px;
	max-width: 1291px;
	height: auto;
    border: 1px solid #333333; 
    border-radius: 10px;
    padding: 30px;
    background-color: white;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 200px;
}

#logo-image {
	position: absolute;
	top: 0;
	left: 0;
	margin: 20px;
}

</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
</head>
<body>
	<div class="login" style="display: block; text-align: right; margin-top: 75px; margin-right: 20px;">
		<% String memberID = (String) session.getAttribute("memberID");
		String memberName = (String) session.getAttribute("memberName");
		if (memberID == null || memberID.equals("")) { %>
			<a href="${pageContext.request.contextPath}/member/login">
				<button class="btn btn-danger" onclick="login()">로그인</button>
			</a>
		<% } else { %>
			<!-- 로그아웃 버튼 -->
			<%= memberName %>님 환영합니다.<br>
			<a href="${pageContext.request.contextPath}/member/Logout.jsp?redirectPage=../reservation/programSelection/${gallery.galleryID}">
				<button class="btn btn-info">로그아웃</button>
			</a>
		<% } %>
	</div>
<header role="header">
    <!-- nav -->
    <nav role="header-nav" class="navy">
	<ul>
	<li><a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>

	<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

	<li><a href="${pageContext.request.contextPath}/review/boardList" title="Blog">커뮤니티</a></li>

	<li><a href="${pageContext.request.contextPath}/mypage/updateOne?memberID=${memberID}" title="Contact">마이 페이지</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/noticeList" title="Contact">공지사항</a></li>
					
	<li><a href="${pageContext.request.contextPath}/notice/qnaList" title="Contact">QnA</a></li>
    </ul>
	</nav>
    </header>
    <!-- Logo -->
	<div id="logo-image"><a href="${pageContext.request.contextPath}/gallery/main.jsp">
    <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
		alt="ArtConnect" style="width: 450px; height: auto;"/></a></div>
    <div id="program-container">
            <h1>전시 목록</h1> <br>
            <h2>${gallery.galleryName}</h2><br>
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
                                    alt="Program Image" style="width: 200px; height: 200px;"></a></td>
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
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>
</body>
</html>
