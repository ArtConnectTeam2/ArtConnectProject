<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="author" content="">

<title>QnA조회</title>

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
	padding: 12px; /* 안쪽 여백 설정 */
	height: 12px;
	background-color: #dcdcd1;
	text-align: center; /* 텍스트 정렬 */
}
td {
	padding: 25px; /* 안쪽 여백 설정 */
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
	
	<div id="qna_title">
	질의응답(QnA)게시판
	</div>
	
		<hr>
		
	<div>
		<table border="1">
			<tr>
				<th>제 목</th>
				<td colspan="5">${vo.qnaTitle}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td colspan="5">${vo.memberID}</td>
			</tr>
			<tr>
				<th>번 호</th>
				<td>${vo.qnaNO}</td>
				<th>조회수</th>
				<td>${vo.qnaHit}</td>
				<th>작성일</th>
				<td>${vo.qnaRegdate}</td>
			</tr>
			<tbody>
			<tr>
				<td colspan="6"><c:out value="${vo.qnaContent}" /></td>
			</tr>
			</tbody>
			<tfoot>
			<tr>
				<td style="border-left: none; border-right: none; border-bottom: none;">
						<a href="qnaList" class="btn btn-primary">목록</a>
				</td>
				<td colspan="4" style="border-left: none; border-right: none; border-bottom: none;"></td>
				<c:if test="${sessionScope.memberID eq 'admin' }"> <!-- 'admin'로 로그인시에만 qna 수정/삭제 버튼 나오도록 -->
				<td style="border-left: none; border-right: none; border-bottom: none;">
						<a href="qnaModify?qnaNO=${vo.qnaNO}" class="btn btn-primary">수정</a>
						<a onclick="return confirm('정말로삭제하겠습니까?')"href="qnaDel?qnaNO=${vo.qnaNO}" class="btn btn-primary">삭제</a>
				</td>
				</c:if>
			</tr>
			</tfoot>
		</table>
	</div>
	
		<hr>

	
	<!-- 댓글조회 -->
	<div>
		<table>
			<c:forEach items="${list}" var="vo2">
			<tr>
				<th>${vo2.memberID}</th>
				<th>${vo2.commentRegDate}</th>
			</tr>
			<tr>
				<td colspan="2">${vo2.commentContent}</td>
			</tr>
			</c:forEach>		
		</table>
	</div>
	
	<hr>
	
	<!-- 댓글작성 -->
	<c:if test="${sessionScope.memberID eq 'admin' }"> <!-- 'admin'로 로그인시에만 qna 수정/삭제 버튼 나오도록 -->
	<div>
		<form  action="commentInsert">
		<table>
			<tr>
				<th colspan="2">댓글작성자</th>
				<td colspan="2"><input type="text" name="memberID" value="관리자"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="3" cols="110" name="commentContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="3" style="border-left: none; border-right: none; border-bottom: none;"></td>
				<td align="right" style="border-left: none; border-right: none; border-bottom: none;">
					<input type="hidden" name="commentBNO" value="${vo.qnaNO}">
					<button type="submit" class="btn btn-primary">댓글 작성</button>
				</td>			
			</tr>
		</table>
		</form>	
	</div>
	</c:if>
			
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