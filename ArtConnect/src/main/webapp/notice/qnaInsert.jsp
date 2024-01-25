<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>QnA작성</title>

<%@ include file="/header.jsp" %>

<style type="text/css">

#qna_title {
	border:5px double;
	border-color:#6E6E6E;
	border-radius: 1%; /* 모서리전체둥글기지정 */
	text-align: center;
	font-size: x-large;
	font-weight: bold; /* 글자굵기 */
	line-height: 2;
}

h3{
    display: block;
    text-align: left;
    font-size: 1.4em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
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
	
		<div align="center">

	<hr>
	<h3>◆ 글을 남겨 주시면 빠른 시일 내에 답변해 드리겠습니다.</h3>
	<hr>
	
	<form action="qnaInsert">
	<table>
		<tr>
			<th>작성자</th>
			<td><input name="memberID" value="${memberID}" ></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><input type="text" name="qnaTitle" size="70" maxlength="100" placeholder="제목을 입력하세요"></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="qnaContent" cols="130" rows="20"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="border-left: none; border-right: none; border-bottom: none;">
				<button type="submit" class="btn btn-primary">작성완료</button>
				<button type="reset" class="btn btn-primary">취소</button>
			</td>
		</tr>
	</table>
	</form>
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