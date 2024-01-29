<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%
	session.getAttribute("memberID");

    %>
<!DOCTYPE html>
<html>
<head>
    
    <title>커뮤니티</title>
    <%@ include file="/header.jsp" %>
    <script>
    
    //글 삭제
        function deleteBoard(boardReviewNO) {
            if (confirm("정말로 삭제하시겠습니까?")) {
                window.location.href = "boardDel?reviewNO=" + boardReviewNO;
            }
        }
        

    
    //댓글 삭제
    function deleteReply(replyNO) {
           
            console.log("Delete reply with replyNO: " + replyNO);
        }
    
    
        
    </script>
    <style>
        .star-input {
            display: none;
        }

        .star-label {
            font-size: 2em;
            color: transparent;
            text-shadow: 0 0 0 #f0f0f0;
            cursor: pointer;
        }

        .star-label:hover {
            text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
        }

        .star-input:checked ~ .star-label {
            text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
        }
        
       
    .container.mt-3 {
        background-color: #ffffff; /* 배경색을 원하는 색상으로 설정 */
        padding: 20px; /* 적절한 여백 설정 */
        border-radius: 10px; /* 원하는 형태의 모서리 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 설정 */
        max-width: 1100px; /* 원하는 최대 가로 너비 설정 */
        margin: 0 auto; /* 가운데 정렬을 위한 마진 설정 */
    }

    .reply-container {
        background-color: #ffffff; /* 배경색을 원하는 색상으로 설정 */
        padding: 20px; /* 적절한 여백 설정 */
        border-radius: 10px; /* 원하는 형태의 모서리 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 설정 */
        max-width: 1100px; /* 원하는 최대 가로 너비 설정 */
        margin: 0 auto; /* 가운데 정렬을 위한 마진 설정 */

    }
    
    .review-content{
    	font-size: 16px;
    }
    
    .reply{
    	font-size: 16px;
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
        <div class="review-content">
            <h3>${board.reviewTitle}</h3><br>
            <p>
            <strong>ID:</strong> ${board.memberID} 
            
        	<span style="float: right;">
            <strong>등록일:</strong> <fmt:formatDate value="${board.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss" />
            <strong>조회수:</strong> ${board.reviewHit}
            </span>
            </p>
            <!-- 주차공간 유무 출력 -->
            <strong>주차공간 :</strong>
            <c:choose>
                <c:when test="${board.parkingAvailable}">
                    있음
                </c:when>
                <c:otherwise>
                    없음
                </c:otherwise>
            </c:choose>
            <!--  별점 -->
                <div>
                    <input type="radio" name="starRating" value="5" id="rate1" class="star-input" ${board.starRating == 5 ? 'checked' : ''}>
                    <label for="rate1" class="star-label">★</label>

                    <input type="radio" name="starRating" value="4" id="rate2" class="star-input" ${board.starRating == 4 ? 'checked' : ''}>
                    <label for="rate2" class="star-label">★</label>

                    <input type="radio" name="starRating" value="3" id="rate3" class="star-input" ${board.starRating == 3 ? 'checked' : ''}>
                    <label for="rate3" class="star-label">★</label>

                    <input type="radio" name="starRating" value="2" id="rate4" class="star-input" ${board.starRating == 2 ? 'checked' : ''}>
                    <label for="rate4" class="star-label">★</label>

                    <input type="radio" name="starRating" value="1" id="rate5" class="star-input" ${board.starRating == 1 ? 'checked' : ''}>
                    <label for="rate5" class="star-label">★</label>
                </div>
            <hr>
            <p class="review-content">${board.reviewContent}</p>
            <%-- 파일이 이미지인 경우 이미지 태그로 표시 --%>
            <c:if test="${not empty board.reviewFile}">
                <img src="${pageContext.request.contextPath}/resources/upload/review/${board.reviewFile}" alt="Attached Image" style="max-width: 100%; display: block; margin: auto;">
            </c:if>
        </div>
    <hr>
    <div>
    	<a href="boardList" type="button" class="btn btn-primary">글 목록</a>
    	<span style="float: right;">
        <a href="boardModify?reviewNO=${board.reviewNO}" type="button" class="btn btn-primary">수정</a>
        <button type="button" class="btn btn-primary" onclick="deleteBoard(${board.reviewNO})">삭제</button>
        </span>
    </div>
    </div>
    
    <hr>
    <div class="reply-container">
    <h3>댓글</h3>
    <br>
    <!-- 댓글 작성 폼 추가 -->
    <form action="${pageContext.request.contextPath}/review/insertReply" method="post">
    	<input type="hidden" name="reviewNO" value="${board.reviewNO}">
    	<textarea name="replyContent" rows="4" cols="140" placeholder="댓글을 입력하세요"></textarea>
    	<br><br>
    	<span style="float: right;">
    	<button type="submit" class="btn btn-primary">댓글 등록</button>
		</span>
	</form>
	<br>
    <!-- 댓글 표시 부분 추가 -->
	<hr>
	<c:forEach var="reply" items="${replies}">
    	<div class="reply">
    		<p>${reply.memberID}  <fmt:formatDate value="${reply.replyDate}" pattern="yyyy-MM-dd HH:mm:ss" />
        	<span style="float: right;">
             <a href="deleteReply?replyNO=${reply.replyNO}&reviewNO=${board.reviewNO}" class="text-danger">삭제</a>
        	</span>
        	</p>
        	<p>${reply.replyContent}</p>
        	<hr>
    	</div>
    	
	</c:forEach>
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