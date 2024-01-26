<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	session.getAttribute("memberID");

    %>
<!DOCTYPE html>
<html>
<head>
    
    <title>커뮤니티</title>
	<%@ include file="/header.jsp" %>
	
	<style>
	.modify-container {
        background-color: #ffffff; /* 배경색을 원하는 색상으로 설정 */
        padding: 20px; /* 적절한 여백 설정 */
        border-radius: 10px; /* 원하는 형태의 모서리 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 설정 */
        max-width: 1100px; /* 원하는 최대 가로 너비 설정 */
        margin: 0 auto; /* 가운데 정렬을 위한 마진 설정 */
    }
	</style>
</head>
<body>
<%@ include file="/nav.jsp" %>
	
	<!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
    <div class="modify-container">
        <h3>글 수정</h3><br>
        <form:form action="boardModifyOk" method="post" modelAttribute="board">
            <input type="hidden" name="reviewNO" value="${board.reviewNO}" />
            
            <div class="form-group">
                <label for="reviewTitle">제목:</label>
                <form:input type="text" class="form-control" id="reviewTitle" name="reviewTitle" path="reviewTitle" />
            </div>

            <div class="form-group">
                <label for="reviewContent">내용:</label>
                <form:textarea class="form-control" id="reviewContent" name="reviewContent" path="reviewContent" rows="20" cols="150"></form:textarea>
            </div>

            <button type="submit" class="btn btn-primary">수정 완료</button>
        </form:form>
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
