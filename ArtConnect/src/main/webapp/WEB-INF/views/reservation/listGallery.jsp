<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
				<tr>
					<td><a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}"><img src="${pageContext.request.contextPath}/${gallery.galleryImg}" alt="Gallery Image" style="width: 150px; height: auto;"></a></td>
					<td><a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}">${gallery.galleryName}</a></td>
					<td>${gallery.galleryLocation}</td>
					<td>${gallery.galleryTel}</td>
					<td><fmt:formatDate value="${gallery.galleryOpentime}" pattern="HH:mm"/></td>
					<td><fmt:formatDate value="${gallery.galleryClosetime}" pattern="HH:mm"/></td>
					<td>${gallery.closedDay}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
