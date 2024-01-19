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
	        var isEmailValid = validateEmail();

	        return isEmailValid;
	    }
	   
	   function confirmAndUpdate() { // 회원정보수정
           if (validateEmail()) {
               if (confirm("회원정보를 수정하시겠습니까?")) {
                   document.getElementById("updateForm").submit();
               }
           }
       }
	   
	   function validateEmail() {
	        var email = document.getElementById("memberEmail").value;
	        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	        var emailErrorMessage = document.getElementById("emailErrorMessage");

	        if (!emailRegex.test(email)) {
	            emailErrorMessage.innerHTML = "올바른 이메일 형식이 아닙니다.";
	            emailErrorMessage.style.color = "red";
	            return false;
	        } else {
	            emailErrorMessage.innerHTML = "";
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
                            <a class="nav-link disabled" aria-disabled="true">좋아요</a>
                        </li>
                    </ul>
                </div>
            </div>
        
        <!-- main content -->
            <div class="col-md-9">
                <div class="update-content">
                    <h2>회원 정보 수정</h2>
                    	<form id="updateForm" action = "updateOk" method = "post" onsubmit="return validateForm();">
                        <tr>
                        아이디 <br>
                        <input type="text" name="memberID" value="${mymember.memberID}" readonly > <br>
                        </tr>
                        <tr>
                        이름 <br>
                         <input type="text" name="memberName" value="${mymember.memberName}" readonly ><br>
                        </tr>
                        <tr>
                        생년월일 <br>
                        <input type="date" name="memberBirth" value="${mymember.memberBirth}"><br>
                        </tr>
                        <tr>
                        성별 <br>
                         <input type="text" name="memberGender" value="${mymember.memberGender}" readonly ><br>
                        </tr>
                        <tr>
                        주소 <br>
                         <input type="text" name="memberAddr" value="${mymember.memberAddr}"><br>
                        </tr>
                        <tr>
                        전화번호 <br>
                         <input type="text" name="memberTel" value="${mymember.memberTel}"><br>
                        </tr>
                        <tr>
                         이메일 <br> 
                        <input type="text" name="memberEmail" id="memberEmail" value="${mymember.memberEmail}">
                        <br><span id="emailErrorMessage"></span><br>
                        </tr>
                        <tr>
                        알람설정 <br> 
                        <input type="text" name="memberAlarm" value="${mymember.memberAlarm}"><br>
                        </tr>
                        <br>
					<button type="submit" onclick="confirmAndUpdate()" style="width: 100px;" class="btn btn-warning">수정</button>
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