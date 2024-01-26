<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>공지사항작성</title>

<%@ include file="/header.jsp" %>

<style type="text/css">

#notice_title {
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
			
	<div id="notice_title">
		공지사항
	</div>
	
	<hr>
	
	<form action="noticeInsert">
		<div>
		<table>
				<input name="memberID" value="admin" type="hidden">
			<tr>
				<th>글쓴이</th>
				<td><input name="noticeName" value="관리자"></td>
			</tr>
			<tr>
				<th>제 목</th>
				<td><input type="text" name="noticeTitle" size="70" maxlength="100" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea name="noticeContent" cols="130" rows="20" placeholder="공지사항을 입력하세요."></textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="border-left: none; border-right: none; border-bottom: none;">
					<button type="submit" class="btn btn-primary">작성완료</button>
					<button type="reset" class="btn btn-success">취소</button>
				</td>
			</tr>
		</table>
	</div>
	</form>

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