<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%
    	session.getAttribute("memberID");
    %>
<!DOCTYPE HTML>
 <html>
 <head>
	  	<meta charset="UTF-8">

        <title>::Art Connect ::</title>
	    <title>${memberID} 님 회원정보수정</title>
	
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

        <!-- style -->
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">

        <!-- bootstrap -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        
        <!-- responsive -->
        <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
        
        <!-- font-awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">


	   <script type="text/javascript">
	   function validateForm() {
	        var isPasswordValid = validatePassword();

	        return isPasswordValid;
	    }
	   
        function validatePassword() {
        	 var currentmemberPW = document.getElementById("currentmemberPW").value;
            var memberPW = document.getElementById("memberPW").value;
            var memberPW2 = document.getElementById("memberPW2").value;
            var storedPassword = "${mymember.memberPW}"; // 이 값은 서버에서 가져와야 합니다.
            var messageSpan = document.getElementById("passwordMatchMessage");

            // 현재 비밀번호 확인
            if (currentmemberPW !== storedPassword) {
                messageSpan.innerHTML = "현재 비밀번호가 일치하지 않습니다.";
                return false;
            }
            
            if (memberPW !== memberPW2) {
                messageSpan.innerHTML = "비밀번호가 일치하지 않습니다.";
                return false;
            } else {
                messageSpan.innerHTML = "비밀번호가 일치합니다."; // 일치하면 메시지를 비웁니다.
                return true;
            }
        }
    </script>
    <style>  
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
	</style>
</head>

<body>
    <header role="header">
        <div class="container">
           
            <!-- Art Connect logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp" title="Art Connect"><img src="${pageContext.request.contextPath}/resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px; " /></a>
            </h1>
            
            <!-- nav -->
            <nav role="header-nav" class="navy">
                <ul>
                   <li class="nav-active"><a
						href="${pageContext.request.contextPath}/gallery/list"
						title="Work">전시관 조회 및 검색</a></li>

					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
                </ul>
            </nav>
        </div>
    </header>

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
        
        <!-- main content -->
            <div class="col-md-9">
                <div class="update-content">
                    <h2>비밀번호 변경</h2>
                    	<form id="updateForm" action ="updatePwOk" method = "post" onsubmit="return validateForm();">
  						
  						<tr>
                  		 현재 비밀번호<br>
                  		<input type="password" id="currentmemberPW" name="currentmemberPW" value="${mymember.memberPW}" required="required" placeholder="비밀번호를 입력해주세요." style="font-size: 15px;"><br>
              	        </tr>
  					    <tr>새 비밀번호<br>
                        <input type="password" id="memberPW" name="memberPW" placeholder="새 비밀번호를 입력해주세요." style="font-size: 15px;"><br>
                        </tr>
                        <tr>새 비밀번호 확인<br>
                        <input type="password" id="memberPW2" name="memberPW2" placeholder="새 비밀번호를 재입력해주세요." style="font-size: 14px;"><br>
                        <span id="passwordMatchMessage" style="color: green;"></span><br> 
                        </tr>
           
					<button type="submit" style="width: 100px;" class="btn btn-warning">수정</button>
				 	<button type="reset" style="width: 100px;" class="btn btn-warning">취소</button> 
				</tr>
                <br>
                <br>        
                    </form>
                </div>
            </div>
        </div>
    </div>

        <!-- footer -->
        <footer role="footer">
            <!-- logo -->
             <!--    <h1>
                    <a href="index.html" title="Art Connect"><img src="resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px;"/></a>
                </h1>
 -->

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
      
        <!-- footer -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
		<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- jquery.countdown -->
        <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>

    </body>

</html>