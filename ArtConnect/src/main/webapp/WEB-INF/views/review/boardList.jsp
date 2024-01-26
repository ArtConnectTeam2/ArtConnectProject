<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>커뮤니티</title>
<%@ include file="/header.jsp" %>
<style>

.container.mt-3 {
        background-color: #ffffff; /* 배경색을 원하는 색상으로 설정 */
        padding: 20px; /* 적절한 여백 설정 */
        border-radius: 10px; /* 원하는 형태의 모서리 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 설정 */
        max-width: 1200px; /* 원하는 최대 가로 너비 설정 */
        margin: 0 auto; /* 가운데 정렬을 위한 마진 설정 */
    }
    
 .table th, .table td {
        font-size: 16px; /* 원하는 글씨 크기로 조정 */
    }
    
  .table th a,
    .table td a {
        color: black; /* 기본으로 검정색으로 설정 */
        text-decoration: none; /* 링크의 밑줄 제거 */
        transition: color 0.3s; /* 부드러운 색상 전환을 위한 트랜지션 추가 */
    }

    .table th a:hover,
    .table td a:hover {
        color: red; /* 호버 시에 빨간색으로 변경 */
        text-decoration: underline; /* 호버 시에만 밑줄 표시 */
    }  
  
  
  
</style>
</head>

<body>
	<%@ include file="/nav.jsp" %>

	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<div class="container mt-3">
	<h1>REVIEW</h1>
	<hr>
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
		${fn:substring(board.reviewTitle, 0, 12)}
		</a>
		</td>
		<td>${fn:substring(board.reviewContent, 0, 40)}</td>
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
<div class="paging">
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