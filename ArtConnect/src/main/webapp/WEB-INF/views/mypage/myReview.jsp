<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
  <%
	session.getAttribute("memberID");
    %>
 
<!DOCTYPE HTML>
 <html>
 <head>
	  	<meta charset="UTF-8"> 

        <title>::Art Connect ::</title>
	    <title>${memberID} 회원정보수정</title>
		<%@ include file="/header.jsp" %>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">
	  	
    <style> 
    
    /* sidebar */
.sidebar {
    border: 1px solid #333333; 
    border-radius: 10px; 
    padding: 20px; 
    background-color: white;
    box-shadow: 10px 10px 10px -5px rgba(0, 0, 0, 0.1)   
}

    .sidebar h3 {
        color: black; 
        text-align: center;
        margin-bottom: 20px; 
    }

    .sidebar ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .sidebar li {
        padding: 10px;
        border-bottom: 1px solid #ddd; 
    }

    .sidebar li:last-child {
        border-bottom: none;
    }

    .sidebar a {
        text-decoration: none;
        color: black; 
        display: block; 
        padding: 10px;
        font-size: 18px;
        text-align: center;
        transition: background-color 0.3s; 
   
    }

    .sidebar a:hover {
        background-color: #f5f5f5; 
    } 
    input {
	width: 500px;
	height: 40px;
	font-size: 20px;
	
	  }
	.navy {
		position: absolute;
		top: 10px;
		right: 10px;
	}
	.container.mt-3.pagination-container {
    text-align:center; /* 오른쪽 정렬 */
    margin-top: -200px; /* 위에서 원하는 여백 값으로 조절 */
      margin-bottom: 150px;
}
	.container.pagination-container {
    text-align: center;
}
	 .pagination {
        display: inline-block;
    }

    .pagination li {
        display: inline;
        margin-right: 5px;
    }

    .pagination li.active {
        font-weight: bold;
        background-color: #007bff;
        color: white;
    }

    .pagination li a {
        text-decoration: none;
        color: #007bff;
    }
      h2 {
        font-size: 24px; 
        font-weight: bold; 
        text-align: center;
    }

    .table th,
    .table td {
        font-size: 18px; 
        text-align: center;
         
    }
th {
    background-color: #F8F8E7;
    
    
}
td {
    background-color: white;
    
}
 border: 1px solid #333333; 
footer {
        bottom: 0;
        width: 100%;
        border-top: 1px solid #ddd;
    }
    .update-content {
      margin-left: 50px;
}
.table {
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    margin-top: 20px; 
    
}
p.no-review-message {
    font-size: 18px;
    text-align: center;
}
.row {
    margin-top: 0px;
}

	</style>
	
</head>

<body>
	<%@ include file="/nav.jsp" %>

    <!-- sidebar -->
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="sidebar">
                    <h3>마이페이지</h3>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="updateOne?memberID=${memberID}">회원정보수정</a>
                        </li>
                             <li class="nav-item">
                        <a class="nav-link" href="updatePw?memberID=${memberID}">비밀번호 변경</a>     
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="deleteOne?memberID=${memberID}">회원탈퇴</a>     
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReservation?memberID=${memberID}">내 예약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReview?memberID=${memberID}">내 리뷰</a>
                        </li>
                        <li class="nav-item">
                        	<a class="nav-link" href="myLike?memberID=${memberID}">좋아요</a>
                        </li>
                    </ul>
                </div>
            </div>
   
        <!-- Main Content -->
<main role="main-home-wrapper" class="container mt-5">
    <h2>나의 리뷰</h2>
    <hr>
    <div class="col-md-9">
        <div class="update-content">
            <form action="myReview" method="post">
                <div id="result">
                    <c:if test="${empty list}">
                        <p class="no-review-message">작성된 리뷰가 없습니다.</p>
                    </c:if>
                    <c:if test="${not empty list}">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>ID</th>
                                    <th>제목</th>
                                    <!-- <th>내용</th> -->
                                    <th>등록일</th>
                                    <th>조회수</th>
                                </tr>
                            </thead>
                            <c:forEach var="review" items="${list}">
                                <tr>
                                    <td>${review.reviewNO}</td>
                                    <td>${review.memberID}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/review/boardOne?reviewNO=${review.reviewNO}">
                                            ${fn:substring(review.reviewTitle, 0, 20)}
                                        </a>
                                    </td>
                                    <%-- 	<td>${fn:substring(review.reviewContent, 0, 60)}</td> --%>
                                    <td><fmt:formatDate value="${review.reviewDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                                    <td>${review.reviewHit}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:if>
                </div>
            </form>
        </div>
    </div>
        </div>
            </div>
    
	<!-- 페이징 부분 추가 -->
<div class="container mt-3 pagination-container">
    <ul class="pagination">
        <c:forEach begin="1" end="${pageVO.totalPages}" varStatus="i">
            <li class="page-item ${pageVO.page eq i.index ? 'active' : ''}">
                <a class="page-link" href="myReview?page=${i.index}&size=${pageVO.size}">${i.index}</a>
            </li>
        </c:forEach>
    </ul>
</div>
</main>
        <!-- footer -->

        <footer role="footer">

            <!-- logo -->

             <!--    <h1>

                    <a href="index.html" title="Art Connect"><img src="${pageContext.request.contextPath}resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px;"/></a>

                </h1>
 -->
            <!-- logo -->

            <!-- nav -->
            <nav role="footer-nav">
            	<ul>
                	<li><a href="index.html" title="Work">Work</a></li>
                    <li><a href="about.html" title="About">About</a></li>
                    <li><a href="blog.html" title="Blog">Blog</a></li>
                    <li><a href="contact.html" title="Contact">Contact</a></li>
                </ul>
            </nav>

            <!-- nav -->
            <ul role="social-icons">
            	<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
            </ul>
            <p class="copy-right">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
        </footer>
      

<%@ include file="/alljs.jsp" %>
    </body>

</html>