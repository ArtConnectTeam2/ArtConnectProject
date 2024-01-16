<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% session.setAttribute("memberID", "임시ID"); %>
<!DOCTYPE html>
<html>
<head>
    
    <title>커뮤니티</title>
    <%@ include file="/header.jsp" %>
    <script>
        function deleteBoard(boardReviewNO) {
            if (confirm("정말로 삭제하시겠습니까?")) {
                window.location.href = "boardDel?reviewNO=" + boardReviewNO;
            }
        }
    </script>
</head>
<body>
<%@ include file="/nav.jsp" %>
	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
    <h1>REVIEW</h1>
    <hr>
    <div class="container mt-3">
        <div class="review-content">
            <h3>${board.reviewTitle}</h3><br>
            <p>
            <strong>ID:</strong> ${board.memberID} 
            <span style="float: right;">
            <strong>등록일:</strong> ${board.reviewDate}
            <strong>조회수:</strong> ${board.reviewHit}
            </span>
            </p>
            <hr>
            <p>${board.reviewContent}</p>
            <%-- 파일이 이미지인 경우 이미지 태그로 표시 --%>
            <c:if test="${not empty board.reviewFile}">
                <img src="${board.reviewFile}" alt="Attached Image" style="max-width: 100%;">
            </c:if>
        </div>
    </div>
    <hr>
    <div>
    	<a href="boardList" type="button" class="btn btn-primary">글 목록</a>
    	<span style="float: right;">
        <a href="boardModify?reviewNO=${board.reviewNO}" type="button" class="btn btn-primary">수정</a>
        <button type="button" class="btn btn-primary" onclick="deleteBoard(${board.reviewNO})">삭제</button>
        </span>
    </div>
    
    <hr>
    <h1>댓글</h1>
    <br>
    <!-- 댓글 작성 폼 추가 -->
    <form action="${pageContext.request.contextPath}/review/insertReply" method="post">
    	<input type="hidden" name="reviewNO" value="${board.reviewNO}">
    	<textarea name="replyContent" rows="4" cols="150" placeholder="댓글을 입력하세요"></textarea>
    	<br><br>
    	<span style="float: right;">
    	<button type="submit" class="btn btn-primary">댓글 등록</button>
		</span>
	</form>
    <!-- 댓글 표시 부분 추가 -->
	<hr>
	<c:forEach var="reply" items="${replies}">
    	<div class="reply">
        	<p>${reply.memberID} - ${reply.replyDate}</p>
        	<p>${reply.replyContent}</p>
    	</div>
	</c:forEach>
    
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
