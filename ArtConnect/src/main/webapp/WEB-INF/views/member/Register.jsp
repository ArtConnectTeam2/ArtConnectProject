<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="kor">
<head>
<title>회원 가입 페이지</title>
<%@ include file="/header.jsp"%>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 1200px;
	width: 100%;
	background-color: #fff;
}

label {
	margin-bottom: 8px;
}

input, select {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

.navy {
	position: absolute;
	top: 10px;
	right: 10px;
}

label{
  font-size: 20px;
}
input{
  font-size: 15px;
}
</style>
</head>
<body>
	<!-- 메인 로고, 네비, 로그인-로그아웃 버튼 -->
	<%@ include file="/nav.jsp"%>

	<!-- 회원가입 폼 -->
	<main role="main-home-wrapper" class="container mt-5">
		<h1>회원가입 페이지</h1>
		<div class="container mt-3">
			<hr>
			<form action="insert.member" method="post" name="joinForm"
				onsubmit="return joinMember();">
				<h2 align="center">회원가입</h2>

				<label for="id">아이디: (필수)</label> <input type="text" id="memberID"
					name="memberID" required placeholder="아이디를 입력하세요">


				<!-- 이미 가입된 아이디를 입력했을 경우 에러 메세지 -->
				<c:if test="${not empty errorMessage}">
					<div class="error-message" style="color: red">${errorMessage}</div>
				</c:if>
				<!-- 비밀 번호 -->
				<label for="pw">비밀번호: (필수)</label> 
				<input type="password" id="pw" name="memberPW" required placeholder="비밀번호를 입력하세요(8자 이상이며 대문자, 소문자, 특수문자를 포함해야합니다)"> 
				<span id="pw_check1" style="color: red;"></span><br> 
				
				<label for="pwConfirm">비밀번호 확인: (필수)</label> 
				<input type="password" id="pwConfirm" name="pwConfirm" required placeholder="비밀번호를 다시 입력하세요"> 
				
				<label for="name">이름: (필수)</label> 
				<input type="text" id="name" name="memberName" required placeholder="이름을 입력하세요"> 
				
				<label for="birth">생년월일:(필수)</label> 
				<input type="date" id="birth" name="memberBirth" required placeholder="생년월일을 선택하세요" min="1950-01-01" max="2020-12-31"> 
				<label for="gender">성별: (선택)</label> 
				<select id="gender" name="memberGender">
					<option value=" ">입력하지않음</option>
					<option value="M">남성</option>
					<option value="F">여성</option>

				</select> 
				<label for="addr">주소: (선택)</label> 
				<input type="text" id="addr" name="memberAddr" placeholder="주소를 입력하세요"> 
				
				<label for="tel">전화번호: (필수)</label> 
				<input type="tel" id="tel" name="memberTel" required
					placeholder="전화번호를 입력하세요"> 
				<label for="email">이메일: (필수)</label> 
				<input type="email" id="email" name="memberEmail" required placeholder="이메일을 입력하세요"> 
				<label for="alarm">알람 설정: (선택)</label> 
				<select id="alarm" name="memberAlarm">
  					<option value=" ">입력하지않음</option>
  					<option value="email">이메일</option>
  					<option value="sms">SMS</option>
  					<option value="push">앱 푸시</option>
				</select>

				<button type="submit" onclick="joinMember()">회원가입</button>


			</form>
		</div>
	</main>

	<!-- footer -->
	<%@ include file="/footer.jsp"%>


	<!-- JavaScript -->
	<%@ include file="/alljs.jsp"%>


	<script type="text/javascript">
    function joinMember() {
        console.log("잘 실행됨");

        var pw = document.getElementById("pw").value;
        var pwConfirm = document.getElementById("pwConfirm").value;
        var pwErroMessage1 = document.getElementById("pw_check1");
        
        // 비밀번호가 비어있을 경우 조건 체크를 하지 않음
        if (pw.trim() === "") {
            pwErroMessage1.innerHTML = "";
        } else {
            var pwreg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

            if (!pwreg.test(pw)) {
                pwErroMessage1.innerHTML = "비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.";
                alert("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
                return false;
            } else {
                pwErroMessage1.innerHTML = "";
            }
        }

        // 비밀번호 확인
        if (pw !== pwConfirm) {
            alert("비밀번호가 일치하지 않습니다.");
            return false;
        }

        // 필수 입력 필드 체크
        var requiredFields = ["memberID", "memberPW", "pwConfirm", "memberName", "memberBirth", "memberTel", "memberEmail"];
        for (var i = 0; i < requiredFields.length; i++) {
            var fieldId = requiredFields[i];
            var fieldValue = document.getElementById(fieldId).value.trim();

            if (fieldValue === "") {
                alert("필수 입력 항목을 모두 입력하세요.");
                return false;
            }
        }

        // 모든 조건을 통과하면 회원가입 실행
        return true;
    }

    function submitForm() {
        // 생년월일 필드 값 가져오기
        var birthValue = document.getElementById("birth").value;

        // 값이 비어있는 경우 null로 설정
        if (birthValue.trim() === "") {
            document.getElementById("birth").value = null;
        }

        // 나머지 폼 데이터를 서버에 전송 또는 폼 submit 로직 수행
        document.forms["joinForm"].submit();
    }
</script>


</body>
</html>
