<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- List all galleries -->
<div>
	<h1 style="margin-top: -80px; margin-left: 10px">미술관 목록</h1>
	<br><br>
	<table border="1" style="text-align: center;">
		<thead>
			<tr>
				<th>미술관 이미지</th>
				<th>미술관 이름</th>
				<th>미술관 주소</th>
				<th>미술관 연락처</th>
				<th>개관 시간</th>
				<th>폐관 시간</th>
				<th>휴무일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="gallery" items="${listGallery}">
                	<c:set var="dayOfWeek" value="${gallery.closedDay}" />
					<c:set var="closedDays" value="${fn:split(dayOfWeek, ', ')}" />
						<tr>
							<td><a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}"><img src="${pageContext.request.contextPath}/resources/img/gallery/${gallery.galleryImg}" alt="Gallery Image" style="width: 150px; height: auto;"></a></td>
							<td><a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}">${gallery.galleryName}</a></td>
							<td>${gallery.galleryLocation}</td>
							<td>${gallery.galleryTel}</td>
							<td><fmt:formatDate value="${gallery.galleryOpentime}" pattern="HH:mm"/></td>
							<td><fmt:formatDate value="${gallery.galleryClosetime}" pattern="HH:mm"/></td>
							<td>매주
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
                					${koreanDay}<c:if test="${!loop.last}">,</c:if><c:if test="${loop.last}"></c:if></c:forEach>요일</td>
						</tr><!-- 요일 앞의 띄어쓰기를 지우기 위해서 전부 붙힘 -->
					</c:forEach>
		</tbody>
	</table>
</div>
