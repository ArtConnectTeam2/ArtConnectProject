<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">
	  	
    <style> 
      /* sidebar */
.sidebar {
    border: 1px solid white; 
    border-radius: 10px; 
    padding: 20px; 
    background-color: white;
      
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
footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    border-top: 1px solid #ddd;
    }
th {
    background-color: #d2d2d2;
}
td {
    background-color: white;
}
    .update-content {
      margin-left: 50px;
}
.table {
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    margin-top: 20px; 
}
p.no-reservation-message {
    font-size: 18px;
    text-align: center;
}
.row {
    margin-top: 80px;
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
	<h2>나의 예약정보</h2>
	<hr>
	<div class="col-md-9">
	<div class="update-content">
	<div id="result">
	<c:if test="${empty list}">
            <p class="no-reservation-message">예약한 내역이 없습니다.</p>
        </c:if>
        <c:if test="${not empty list}">
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>예약자ID</th>
				<th>전시명</th>

				<th>관람시간</th>
				<th>결제상태</th>
				<!-- qr페이지로 이동하는 부분 추가 -->
				<th>예약 정보 확인</th>

			</tr>
		</thead>
 		<c:forEach var ="reservation" items="${list}">
			<tr>
		<td>${reservation.reservationID}</td>
		<td>${reservation.memberID}</td>

		<td>${reservation.programTitle}</td>

		<td>${reservation.reservationTime}</td>
		
		<td>

			<!-- qr페이지로 이동하는 버튼 -->
			<a href="${pageContext.request.contextPath}/reservation/qrcreater/${reservation.reservationID}?memberID=${memberID}" target="_blank">
        		<button class="viewQrCodeBtn">QR 코드 보기</button>
    		</a>
		</td>
		<td>
			<!-- 예약취소 버튼에 직접 이벤트를 추가 -->
			<button class="cancelReservationBtn">예약취소</button>
		</td>

		</tr> 
		 </c:forEach> 
		</table>
		 </c:if>
	</div>
</div>
</div>
</div>
</div>
	<hr>
  
	
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
							<li><a href="#"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-flickr"
									aria-hidden="true"></i></a></li>
						</ul>
						<p class="copy-right">
							Shared by <i class="fa fa-love"></i><a
								href="https://bootstrapthemes.co">BootstrapThemes</a>
						</p>
					</footer>

					<!-- footer -->
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script
						src="${pageContext.request.contextPath}/resources/js/jquery.min.js"
						type="text/javascript"></script>
					<!-- custom -->
					<script
						src="${pageContext.request.contextPath}/resources/js/nav.js"
						type="text/javascript"></script>
					<script
						src="${pageContext.request.contextPath}/resources/js/custom.js"
						type="text/javascript"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script
						src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"
						type="text/javascript"></script>
					<!-- jquery.countdown -->
					<script
						src="${pageContext.request.contextPath}/resources/js/html5shiv.js"
						type="text/javascript"></script>
				  <script>
		$(".cancelReservationBtn").click(
				function() {
					// 사용자에게 확인 창 띄우기
					if (confirm("예약을 취소하시겠습니까?")) {
						// 예를 선택한 경우에만 아래 코드 실행
						console.log("버튼 클릭됨");

						// 부모 <tr>에서 예약 ID 가져오기
						var reservationID = $(this).closest('tr').find(
								'td:first').text();
						console.log("예약 ID: " + reservationID);

						// Ajax를 통한 예약 삭제
						$.ajax({
							url : "deleteReservation",
							type : "POST",
							data : {
								reservationID : reservationID
							},
							success : function(response) {
								alert('예약이 성공적으로 취소되었습니다.');
								// 예약 목록 업데이트 등의 추가 작업 수행
							},
							error : function(error) {
								alert('예약 취소에 실패했습니다.');
								console.log("에러 떴습니다", error)
							}
						});
					}
				});
	</script>
</body>


</html>