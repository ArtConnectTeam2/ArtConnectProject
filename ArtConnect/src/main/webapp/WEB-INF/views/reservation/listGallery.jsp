<!-- views/listGallery.jsp -->

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- List all galleries -->
<div>
	<h2>미술관 목록</h2>
	<table border="1">
		<thead>
			<tr>
				<th>미술관 이미지</th>
				<th>미술관 이름</th>
				<th>미술관 주소</th>
				<th>미술관 연락처</th>
				<th>운영 시간</th>
				<th>휴무일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="gallery" items="${listGallery}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/exhibitionSelection/${gallery.galleryID}"><img src="${gallery.galleryImg}" alt="Gallery Image"></a></td>
					<td><a href="${pageContext.request.contextPath}/exhibitionSelection/${gallery.galleryID}">${gallery.galleryName}</a></td>
					<td>${gallery.galleryAddress}</td>
					<td>${gallery.galleryNumber}</td>
					<td>${gallery.operatingHours}</td>
					<td>${gallery.closeDays}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
