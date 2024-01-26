<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>전시 목록 페이지</title>
<%@ include file="/header.jsp"%>
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

</style>
</head>
<body>
<%@ include file="/nav.jsp"%>
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
