<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>QnA게시판</title>

<%@ include file="/header.jsp" %>

<style>

#qna_title {
	border: 5px solid #FFAAAA;
	background-color: #FFDDDD;
	text-align: center;
	font-size: 30px;
	font-weight: bold; /* 글자굵기 */
	height: 90px;
	padding: 17px;
}

table {
	border-collapse: collapse; /* 테이블 셀 경계를 합침 */
	width: 95%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	margin: auto; /* 가로 중앙에 배치 */
}

th {
	padding: 20px; /* 안쪽 여백 설정 */
	height: 50px;
	background-color: #dcdcd1;
	border-bottom: 3px solid #036;
	font-size: 17px;
	text-align: center; /* 텍스트 정렬 */
}

td {
	padding: 20px; /* 안쪽 여백 설정 */
	height: 20px;
	font-size: 15px;
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
	
	<div id="qna_title">
	질의응답(QnA)게시판
	</div>
	
	<hr>
	
	<div id="qna_list">
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제 목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.qnaNO}</td>
				<td><a href="qnaGet?qnaNO=${vo.qnaNO}">${vo.qnaTitle}</a></td>
				<td>${vo.memberID}</td>
				<td>${vo.qnaRegdate}</td>
				<td>${vo.qnaHit}</td>
			</tr>
			</c:forEach>
			<tfoot>
			<tr>
				<td colspan="4" style="border-bottom: none;"></td>
				<td style="border-bottom: none;"><button type="button" onclick="location.href='qnaInsert.jsp'" class="btn btn-primary">작성</button></td>
			</tr>
			</tfoot>
		</table>
	</div>

	<div class="container mt-3">
    	<ul class="pagination">
        	<c:forEach begin="1" end="${pagingVO.totalPages}" varStatus="i">
           	 <li class="${pagingVO.page eq i.index ? 'active' : ''}">
             	<a href="qnaList?page=${i.index}&size=${pagingVO.size}">${i.index}</a>
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