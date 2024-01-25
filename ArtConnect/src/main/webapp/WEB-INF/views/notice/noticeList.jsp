<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>공지사항게시판</title>

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
#notice_search {
	text-align: center;
	font-size: medium;
}
#notice_count {
	padding: 12px;
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
	border-bottom: 3px solid #036;
	text-align: center; /* 텍스트 정렬 */
}

td {
	padding: 20px; /* 안쪽 여백 설정 */
	height: 12px;
	border-bottom: 1px solid #ccc;
	text-align: center; /* 텍스트 정렬 */
}

tfoot{
	height: 10px;
}

.pagination {
	display: flex;
	justify-content: center;
}

</style>

</head>

<body>

	<%@ include file="/nav.jsp"%>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	
	<div id="notice_title">
		공지사항
	</div>
	
	<hr>
	
	<div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="vo">
			<tr>
				<td>${PagingVO.totalPages} ${vo.noticeNO}</td>
				<td><a href="noticeGet?noticeNO=${vo.noticeNO}">${vo.noticeTitle}</a></td>
				<td>${vo.noticeName}</td>
				<td>${vo.noticeRegdate}</td>
				<td>${vo.noticeHit}</td>
			</tr>
			</c:forEach>
			<c:if test="${sessionScope.memberID eq 'admin' }"> <!-- 'hello'로 로그인시에만 공지사항 작성버튼 나오도록 -->
			<tr>
				<td colspan="4" style="border-bottom: none;"></td>
				<td style="border-bottom: none;"><button type="button" onclick="location.href='noticeInsert.jsp'" class="btn btn-primary">작성</button></td>
			</tr>
			</c:if>
		</table>
	</div>

<div class="container mt-3">
    <ul class="pagination">
        <c:forEach begin="1" end="${pagingVO.totalPages}" varStatus="i">
            <li class="${pagingVO.page eq i.index ? 'active' : ''}">
                <a href="noticeList?page=${i.index}&size=${pagingVO.size}">${i.index}</a>
            </li>
        </c:forEach>
    </ul>
</div>	
	
	</main>

	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p>COPYRIGHT©멀티캠퍼스 2조. All Rights Reserved</p>
			<p>본 홈페이지에 게시된 전화번호나 전자우편주소를 영리목적으로 자동 수집·전송하는 행위는 정보통신망법 및
				개인정보보호법에 의해 처벌됩니다.</p>
		</div>
	</footer>

	<%@ include file="/alljs.jsp"%>

</body>
</html>