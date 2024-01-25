<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="author" content="">

<title>공지사항조회</title>

<%@ include file="/header.jsp" %>

<style>

#notice_title {
	border:5px double;
	border-color:#6E6E6E;
	border-radius: 1%; /* 모서리전체둥글기지정 */
	text-align: center;
	font-size: x-large;
	font-weight: bold; /* 글자굵기 */
	line-height: 2;
}

table {
	border-collapse: collapse; /* 테이블 셀 경계를 합침 */
	width: 80%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	height: 200px; /* 테이블의 높이를 200px로 설정 */
	margin: auto; /* 가로 중앙에 배치 */
}
th {
	padding: 12px; /* 안쪽 여백 설정 */
	height: 12px;
	background-color: #dcdcd1;
	text-align: center; /* 텍스트 정렬 */
}
td {
	padding: 20px; /* 안쪽 여백 설정 */
	height: 12px;
	border-bottom: 1px solid #ccc;
	text-align: center; /* 텍스트 정렬 */
}
tbody {
	height: 220px;
	padding: 20px;
}
tfoot {
	height: 12px;
}

</style>

</head>
<body>

	<%@ include file="/nav.jsp"%>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container">
	
	<div id="notice_title">
		공지사항
	</div>
	
	<hr>
		
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>제 목</th>
					<td colspan="5">${vo.noticeTitle}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td colspan="5">${vo.noticeName}</td>
				</tr>
				<tr>
					<th>번 호</th>
					<td>${vo.noticeNO}</td>
					<th>조회수</th>
					<td>${vo.noticeHit}</td>
					<th>작성일</th>
					<td>${vo.noticeRegdate}</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="6">${vo.noticeContent}</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td style="border-bottom: none;">
						<a href="noticeList" class="btn btn-primary">목록</a>
					</td>
					<td colspan="4" style="border-bottom: none;"></td>
					<c:if test="${sessionScope.memberID eq 'admin' }"> <!-- 'admin'로 로그인시에만 공지사항 수정/삭제 버튼 나오도록 -->
					<td style="border-bottom: none;">
						<a href="noticeModify?noticeNO=${vo.noticeNO}" class="btn btn-primary">수정</a>
						<a onclick="return confirm('정말로삭제하겠습니까?')"href="noticeDel?noticeNO=${vo.noticeNO}" class="btn btn-primary">삭제</a>
					</td>
					</c:if>
				</tr>
			</tfoot>
		</table>
	</div>
	
	</main>

	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="container">
			<p>COPYRIGHT©멀티캠퍼스 2조. All Rights Reserved</p>
			<p>본 홈페이지에 게시된 전화번호나 전자우편주소를 영리목적으로 자동 수집·전송하는 행위는 정보통신망법 및
				개인정보보호법에 의해 처벌됩니다.</p>
		</div>
	</footer>

	<%@ include file="/alljs.jsp"%>

</body>
</html>