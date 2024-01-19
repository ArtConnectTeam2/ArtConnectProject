<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% session.setAttribute("memberID", "임시ID"); %>
<!DOCTYPE html>
<html>
<head>
<title>커뮤니티</title>
<%@ include file="/header.jsp" %>
</head>

<body>
	<%@ include file="/nav.jsp" %>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<h1>REVIEW</h1>
	<hr>
	<div class="container mt-3">
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>ID</th>
				<th>제목</th>
				<th>내용</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<c:forEach var ="board" items="${list}">
	
		<tr>
		<td>${board.reviewNO}</td>
		<td>${board.memberID}</td>
		<td>
		<a href="boardOne?reviewNO=${board.reviewNO}">
		${fn:substring(board.reviewTitle, 0, 15)}
		</a>
		</td>
		<td>${fn:substring(board.reviewContent, 0, 50)}</td>
		<td><fmt:formatDate value="${board.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		<td>${board.reviewHit}</td>
		</tr>
		</c:forEach>
		</table>
	</div>
	<hr>
	
	
	<div>
	<span style="float: right;">
		<a href="boardPost" type ="button" class="btn btn-primary">글 쓰기</a>
	</span>
	</div>
	<!-- 페이징 부분 추가 -->
<div class="container mt-3">
    <ul class="pagination">
        <c:forEach begin="1" end="${pageVO.totalPages}" varStatus="i">
            <li class="${pageVO.page eq i.index ? 'active' : ''}">
                <a href="boardList?page=${i.index}&size=${pageVO.size}">${i.index}</a>
            </li>
        </c:forEach>
    </ul>
</div>
	</main>
	<!-- Footer -->
	<footer role="footer" class="bg-light mt-5">
		<div class="container">
			<p class="copy-right mt-4">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	
	<!-- JavaScript -->
	<%@ include file="/alljs.jsp" %>
</body>
</html>