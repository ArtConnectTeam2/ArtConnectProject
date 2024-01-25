<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	  	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>  
    /* sidebar */
.sidebar {
    border-radius: 10px;
     border: 1px solid #333333;  
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
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ced4da;
    border-radius: 5px;
    border-radius: 5px;
}
input:focus {
    outline: none;
    border-color: #ffc107; 
    box-shadow: 0 0 5px rgba(255, 193, 7, 0.5);
}
#update{
	  width: 540px;
	  height: 500px;
      border: 3px solid white; 
      border-radius: 10px;
      padding: 20px;
      background-color: white;
      margin : 80px;
      margin-top: -1px;
       border: 1px solid #333333; 
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
.row {
    margin-top: 0px;
}
	
	
	</style>
</head>
<script type="text/javascript">
    $(document).ready(function(){
        $("#submit").on("click", function(){
            if ($("#pw").val() == "") {
                alert("비밀번호를 입력해주세요.");
                $("#pw").focus();
                return false;
            } else {
                var enteredPassword = $("#pw").val(); 

                var storedPassword = "${mymember.memberPW}";
                var pwErrorMessage = document.getElementById("pw_check");
                
                if (enteredPassword !== storedPassword) {
                	 pwErrorMessage.innerHTML = " ";
                     pwErrorMessage.style.color = "red";
                     $("#pw").val(""); 
                     $("#pw").focus(); 
                     return false;
                } else if(enteredPassword === storedPassword){
                	 pwErrorMessage.innerHTML = " ";
                     pwErrorMessage.style.color = "green";
                } 
                
                else {
                	pwErrorMessage.innerHTML = "";
                      return true;
                }
            }
            var confirmation = confirm("정말 탈퇴하시겠습니까? 확인 버튼 선택 시, 계정은 삭제되며 복구되지 않습니다.");
            if (confirmation) {
                alert("회원 탈퇴가 완료되었습니다.");
            } else {
                alert("회원 탈퇴가 취소되었습니다.");
                return false;
            }
        });

    });
</script>
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
                            <a class="nav-link" href="#">회원탈퇴</a>
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


<section id="container">
				<div class="col-md-9">
				<div id="update">
				<div id="update2">
				<h2>회원 탈퇴</h2><br>
			<form action="deleteOk" method="post">
                        <div id="updateid">아이디</div> 
                        <input type="text" id="id_member" name="memberID" value="${mymember.memberID}" readonly > <br>
                        <br>
                      
                       <div id="updateid"> 비밀번호</div>
                        <input type="password" id="pw" name="memberPW" placeholder="비밀번호를 입력해주세요" style="font-size: 15px;"><br>
                         <div class="check_font" id="pw_check"></div>
                        <br>
                        
                        <div id="updateid">이름</div>
                         <input type="text" id="name" name="memberName" value="${mymember.memberName}" readonly ><br>
                        <br>
				    <button type="submit" id="submit" style="width: 100px;"  class="btn btn-primary">회원탈퇴</button>
				 	<button type="reset" style="width: 100px;" class="btn btn-primary">취소</button> 
				<br>
				<br>
			</form>
			</div>
			</div>
			       </div>
			       
            </div>
        </div>
    </div>
	
		</section>
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
      
		<!-- JavaScript -->
	<%@ include file="/alljs.jsp" %>
</body>
</html>