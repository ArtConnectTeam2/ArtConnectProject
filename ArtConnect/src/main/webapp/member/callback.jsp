
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("VFdsT2SPGL6J7j2_rpyi",
				"http://localhost:8888/api/callback.jsp");
		alert(naver_id_login.oauthParams.access_token);
		//naver_id_login.setPopup();
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			//username = naver_id_login.getProfileData('id')
			nickname = naver_id_login.getProfileData('nickname')
			name = naver_id_login.getProfileData('name')
			email = naver_id_login.getProfileData('email')
			gender = naver_id_login.getProfileData('gender')
			birthday = naver_id_login.getProfileData('birthday')
			profile_image = naver_id_login.getProfileData('profile_image')
			
			//age = naver_id_login.getProfileData('age') //10~19
			//birthyear = naver_id_login.getProfileData('birthyear')
			//mobile = naver_id_login.getProfileData('mobile')
			//email로 id역할을 하게 함.
			alert("naverLogin?nickname=" + nickname
					+ "&name=" + name + "&email=" + email + "&gender=" + gender
					+ "&birthday=" + birthday
					+ "&profile_image=" + profile_image)
			location.href ="naverLogin?nickname=" + nickname
					+ "&name=" + name + "&email=" + email + "&gender=" + gender
					+ "&birthday=" + birthday
					+ "&profile_image=" + profile_image 

		}
	</script>
</body>
</html>