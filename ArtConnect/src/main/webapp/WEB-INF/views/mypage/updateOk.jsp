<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
  
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
	  	
    <style>  
    input {
	width: 500px;
	height: 40px;
	font-size: 20px;
	  }
	</style>
</head>

<body>

    <header role="header">
        <div class="container">
           
            <!-- Art Connect logo -->
            <h1>
                <a href="index.html" title="Art Connect"><img src="${pageContext.request.contextPath}/resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px; " /></a>
            </h1>
            
            <!-- nav -->
            <nav role="header-nav" class="navy">
                <ul>
                    <li class="nav-active"><a href="index.html" title="Work">전시관</a></li>
                    <li><a href="about.html" title="Reservation">예약</a></li>
                    <li><a href="blog.html" title="Community">커뮤니티</a></li>
                    <li><a href="a_update" title="Mypage">마이페이지</a></li>
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
                            <a class="nav-link active" aria-current="page" href="#">회원정보수정</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">회원탈퇴</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">내 예약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">내 리뷰</a>
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
                    	<form action = "updateOk" method = "post">
                        <tr>
                        아이디 <br>
                        <input type="text" name="id_member" value="${member.id_member}" readonly > <br>
                        </tr>
                        <tr>
                        비밀번호 <br>
                        <input type="password" name="pw" value="${member.pw}"><br>
                        </tr>
                        <tr>
                        이름 <br>
                         <input type="text" name="name" value="${member.name}" readonly ><br>
                        </tr>
                        <tr>
                        생년월일 <br>
                        <input type="text" name="birth" value="${member.birth}" readonly ><br>
                        </tr>
                        <tr>
                        성별 <br>
                         <input type="text" name="gender" value="${member.gender}" readonly ><br>
                        </tr>
                        <tr>
                        주소 <br>
                         <input type="text" name="addr" value="${member.addr}"><br>
                        </tr>
                        <tr>
                        전화번호 <br>
                         <input type="text" name="tel" value="${member.tel}"><br>
                        </tr>
                        <tr>
                        알람설정 <br> 
                        <input type="text" name="alarm" value="${member.alarm}" readonly ><br>
                        </tr>
                        <tr>
                        이메일 <br> 
                        <input type="text" name="email" value="${member.email}"><br>
                        </tr>
                        <tr>
                        <br>
					<button type="submit" style="width: 100px;" class="btn btn-warning">수정</button>
				 	<button type="submit" style="width: 100px;" class="btn btn-warning">취소</button> 
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