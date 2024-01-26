<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  <%
 		String member = null;
    if (session.getAttribute("memberID") == null) {
%>
        <script>
            alert("로그인을 먼저 해주세요.");
            window.location.href = "<%= request.getContextPath() %>/member/login";
        </script>
<%
    } else {
    	 member = (String) session.getAttribute("memberID");
   } %>
<!DOCTYPE HTML>
 <html>
 <head>
	  	<meta charset="UTF-8">

        <title>::Art Connect ::</title>
	    <title>${memberID} 님 회원정보수정</title>
	<%@ include file="/header.jsp" %>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">

	   <script type="text/javascript">
	   function confirmAndUpdate() { // 회원정보수정
           if (validateEmail()  && validateTel() && validateName()) {
               if (confirm("회원정보를 수정하시겠습니까?")) {
                   document.getElementById("updateForm").submit();
               }
           }
       }
	   
	   function validateForm() {
	        var isEmailValid = validateEmail();
	        var isNameValid = validateName(); 
	        var isTelValid = validateTel();  
	        return isEmailValid && isTelValid && isNameValid;
	    }
	   

	   
	   function validateEmail() { // 이메일 유효성 검사
	        var email = document.getElementById("memberEmail").value;
	        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	        var emailErrorMessage = document.getElementById("email_check");

	        if (!emailRegex.test(email)) {
	            emailErrorMessage.innerHTML = "올바른 이메일 형식이 아닙니다.";
	            emailErrorMessage.style.color = "red";
	            return false;
	        } else {
	            emailErrorMessage.innerHTML = "";
	            return true;
	        }
	   }
 	   function validateName() { // 이름 유효성 검사
           var name = document.getElementById("memberName").value;
           var nameErrorMessage = document.getElementById("name_check");
           var nameJ = /^[가-힣]{2,6}$/;

           if (name.trim() === "") {
               nameErrorMessage.innerHTML = "이름을 입력해주세요.";
               nameErrorMessage.style.color = "red";
               return false;
           } else if (!nameJ.test(name)) {
               nameErrorMessage.innerHTML = "한글 2~6자로 입력해주세요.";
               nameErrorMessage.style.color = "red";
               return false;
           } else {
               nameErrorMessage.innerHTML = "";
               return true;
           }
	   }
	       
        function validateTel() { // 휴대폰 번호 유효성 검사
			var tel = document.getElementById("memberTel").value;
       		var telErrorMessage = document.getElementById("tel_check");
       		var telJ =/^010[0-9]{4}[0-9]{4}$/;
       		
       	 if (tel.trim() === "") {
       		telErrorMessage.innerHTML = "휴대폰 번호를 입력해주세요.";
       		telErrorMessage.style.color = "red";
             return false;
         } else if (!telJ.test(tel)) {
        	 telErrorMessage.innerHTML = "휴대폰 번호를 확인해주세요.";
        	 telErrorMessage.style.color = "red";
             return false;
         } else {
        	 telErrorMessage.innerHTML = "";
             return true;
      	 } 
        } 
   </script>
   
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
	.navy {
    position: absolute;
    top: 10px;
    right: 10px;
	}

#update{
	  width: 540px;
	  height: 961px;
      border: 1px solid #333333; 
      border-radius: 10px;
      padding: 20px;
      background-color: white;
      margin : 80px auto;
      margin-top: -1px;
      box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
}
#update2{
      text-align: center;
      background-color: transparent;
}

#updateForm{
	background-color: transparent;
}

#updateid {
	max-width: 100px;
    font-size: 1.2em; 
    font-weight: bold;
    text-align: left;
    margin-left: 5px;
    margin-bottom: 5px;
}	

#update2 > div {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

#update2 > div > input {
    flex: 1;
    margin-left: 10px;
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
#tel_check {
	margin-top: -5px;
    margin-left: -330px;
}
#name_check {
	margin-top: -5px;
    margin-left: -330px;
}
#email_check {
	margin-top: -5px;
    margin-left: -310px;
}

footer {
        bottom: 0;
        width: 100%;
        border-top: 1px solid #ddd;
    }
    button {
    margin-right: 25px; 
}
.row {
    margin-top: 0px;
}
.btn-primary {
    margin-top: -40px; 
}

.btn-secondary {
    margin-top: -40px;
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
                    <h2>회원 정보 수정</h2><br><br>
                    	<form id="updateForm" action = "updateOk" method = "post" onsubmit="return validateForm();">
                        <div id="updateid">아이디</div>
                        <input type="text" name="memberID" value="${mymember.memberID}" readonly > <br><br>
                        
                        <div id="updateid">이름</div> 
                        <input type="text" name="memberName" id="memberName" value="${mymember.memberName}" onblur="validateName()">
                        <div class="check_font" id="name_check"></div><br>
                       
                        <div id="updateid">생년월일</div>
                        <input type="date" name="memberBirth" value="${mymember.memberBirth}"><br><br>
                       
                        <div id="updateid">성별</div> 
                        <input type="text" name="memberGender" value="${mymember.memberGender}" readonly ><br><br>
                        <div>
                       
                        <div id="updateid">주소</div> 
                        <input type="text" name="memberAddr" value="${mymember.memberAddr}"><br><br>
                       
                        <div id="updateid">전화번호</div> 
                        <input type="text" name="memberTel" id="memberTel" value="${mymember.memberTel}" onblur="validateTel()">
                        <div class="check_font" id="tel_check"></div> <br>
                       
                         <div id="updateid">이메일</div>  
                         <input type="text" name="memberEmail" id="memberEmail" value="${mymember.memberEmail}" onblur="validateEmail()">
                         <div class="check_font" id="email_check"></div><br>
                       
                         <div id="updateid">알람설정</div>  
                         <input type="text" name="memberAlarm" value="${mymember.memberAlarm}"><br><br>
                         <br>
					<button type="submit" onclick="confirmAndUpdate()" style="width: 100px;" class="btn btn-primary">수정</button>
				 	<button type="reset" style="width: 100px;" class="btn btn-primary">취소</button> 
				</div>
                <br>
                <br>    
                   
                    </form>
                    </div> 
                </div>
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
</div>
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