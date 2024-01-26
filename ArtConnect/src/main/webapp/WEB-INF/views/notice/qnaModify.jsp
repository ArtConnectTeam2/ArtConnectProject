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

<title>QnA수정</title>

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
	width: 80%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	height: 200px; /* 테이블의 높이를 200px로 설정 */
	margin: auto; /* 가로 중앙에 배치 */
}

th {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 8px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
	background-color: #f2f2f2;
}

td {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 20px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
}
</style>

</head>
<body>

	<%@ include file="/nav.jsp"%>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container">
	
	<div id="qna_title">
		질의응답(QnA)게시판
	</div>
	
	<hr>
	
		<form action="qnaModify2">

			<table>
				<input type="hidden" name="qnaNO" value="${vo.qnaNO}">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="qnaName" value="${vo.memberID}"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>제 목</th>
					<td><input type="text" name="qnaTitle" value="${vo.qnaTitle}"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea cols="130" rows="20" name="qnaContent"><c:out value="${vo.qnaContent}" /></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-left: none; border-right: none; border-bottom: none;"><button type="submit" class="btn btn-primary">수정</button></td>
				</tr>
			</table>
		</form>
	</main>

	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="container"></p>
			<p>COPYRIGHT©멀티캠퍼스 2조. All Rights Reserved</p>
			<p>본 홈페이지에 게시된 전화번호나 전자우편주소를 영리목적으로 자동 수집·전송하는 행위는 정보통신망법 및
				개인정보보호법에 의해 처벌됩니다.</p>
		</div>
	</footer>

	<%@ include file="/alljs.jsp"%>

</body>
</html>