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
		<%@ include file="/header.jsp" %>
		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">


	   <script type="text/javascript">
	   function confirmAndUpdate() { // 비밀번호 변경
		    if (validatePassword()) {
		        if (confirm("비밀번호를 변경하시겠습니까?")) {
		            var successMessage = "비밀번호가 변경되었습니다. 다시 로그인해주세요.";
		            if (confirm(successMessage)) {
		                document.getElementById("updateForm").submit();
		            }
		        }
		    }
		}

	    function validateForm() {
	        var isPasswordValid = validatePassword();
	        return isPasswordValid;
	    }
	   function validatePassword() {
	        var currentmemberPW = document.getElementById("currentmemberPW").value;
	        var memberPW = document.getElementById("memberPW").value;
	        var memberPW2 = document.getElementById("memberPW2").value;
	        var storedPassword = "${mymember.memberPW}"; 
	        var pwErroMessage = document.getElementById("pw_check");
	        var pwErroMessage1 = document.getElementById("pw_check1");
	        var pwErroMessage2 = document.getElementById("pw_check2");
	        var pwreg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	        // 현재 비밀번호 확인
	        if (currentmemberPW !== storedPassword) {
	        	pwErroMessage.innerHTML = "현재 비밀번호가 일치하지 않습니다.";
	            return false;
	        }

	        if (!pwreg.test(memberPW)) {
            	pwErroMessage1.innerHTML = "비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.";
                return false;
            } else {
            	pwErroMessage1.innerHTML = ""; 
            }
	   
	        // 새 비밀번호 확인
	        if (memberPW2.trim() === "") {
	        	pwErroMessage2.innerHTML = "비밀번호를 입력해주세요.";
	            return false;
	        } else if (memberPW !== memberPW2) {
	            pwErroMessage2.innerHTML = "비밀번호가 일치하지 않습니다.";
	            return false;
	        }  else {
	            pwErroMessage2.innerHTML = "비밀번호가 일치합니다.";
	            return true;
	      
	        }
	       
	  
	        }
	    
   
    </script>
    <style>
    /* sidebar */
.sidebar {
    border: 1px solid white; 
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
    #update{
    border: 3px solid white; 
    border-radius: 10px;
    background-color: white;
    padding: 20px;
    margin : 80px;
    margin-top: -1px;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
}
	#update2{
      text-align: center;
      background-color: white;
      
} 
#updateid {
    margin-left: -400px;
    font-size: 1.2em; 
    font-weight: bold;
}
#updateid1 {
    margin-left: -410px;
    font-size: 1.2em; 
    font-weight: bold;
}	
#updateid2 {
    margin-left: -370px;
    font-size: 1.2em; 
    font-weight: bold;
}	
	
  input {
    width: 500px;
    height: 40px;
	font-size: 20px;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ced4da;
    border-radius: 5px;
}
input:focus {
    outline: none;
    border-color: #ffc107; 
    box-shadow: 0 0 5px rgba(255, 193, 7, 0.5);
}
	  
	  	.navy {
		position: absolute;
		top: 10px;
		right: 10px;
	}
footer {
        bottom: 0;
        width: 100%;
        border-top: 1px solid #ddd;
    }	
     button {
    margin-right: 25px; 
    }
#pw_check1 {
    position: relative;
    top: -5px;
    margin-left : 10px;
    transition: transform 0.3s ease; 
}
#pw_check2 {
    margin-left: -340px;
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
        
        <!-- main content -->
            <div class="col-md-9">
                <div class="update-content">
                <div id="update">
                <div id="update2">
                    <h2>비밀번호 변경</h2><br>
                    	<form id="updateForm" action ="updatePwOk" method = "post" onsubmit="return validateForm();">
                  		<div id="updateid">현재 비밀번호</div>
                  		<input type="password" id="currentmemberPW" name="currentmemberPW" value="${mymember.memberPW}" onblur="validatePassword()" required="required" placeholder="비밀번호를 입력해주세요." style="font-size: 15px;"><br>
              	        <span id="pw_check" style="color: red;"></span><br> 
  					    <div id="updateid1">새 비밀번호</div>
                        <input type="password" id="memberPW" name="memberPW" placeholder="새 비밀번호를 입력해주세요." style="font-size: 15px;" onblur="validatePassword()"><br>
                        <span id="pw_check1" style="color: red;"></span><br> 
                        <div id="updateid2">새 비밀번호 확인</div>
                        <input type="password" id="memberPW2" name="memberPW2" placeholder="새 비밀번호를 재입력해주세요." style="font-size: 14px;" onblur="validatePassword()"><br>
                       <div id="pw_check2" class="check_font" style="color: red;"></div><br>
           
					<button type="submit" onclick="confirmAndUpdate()" style="width: 100px;" class="btn btn-warning">수정</button>
				 	<button type="reset" style="width: 100px;" class="btn btn-warning">취소</button> 
				</div>
                    </form>
                    </div>
                <br>
                <br> 
                       
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