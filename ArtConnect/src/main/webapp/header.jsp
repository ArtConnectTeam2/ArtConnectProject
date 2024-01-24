<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">

<meta name="author" content="">


<title>:: 미술관 메인 페이지 ::</title>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">

<!-- style -->

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">

<!-- style -->

<!-- bootstrap -->

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<!-- responsive -->

<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet" type="text/css">

<!-- font-awesome -->

<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- font-awesome -->

<link
	href="${pageContext.request.contextPath}/resources/css/effects/set2.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/resources/css/effects/normalize.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/resources/css/effects/component.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>

<style>
/* 이미지 크기와 위치 조정 */
#logo-image {
	max-width: 500px; /* 원하는 크기로 조절 */
	position: absolute;
	top: 10px; /* 이미지를 아래로 내리고 싶다면 값을 늘리세요 */
	left: 600px; /* 이미지를 오른쪽으로 이동하려면 값을 늘리세요 */
}

/* 네비게이션 위치 조정 */
.navy {
	position: absolute;
	top: 10px; /* 원하는 값으로 조정해주세요 */
	right: 10px; /* 원하는 값으로 조정해주세요 */
}

.login{
	text-align: right;
	margin-top: 75px;
	margin-right: 20px;
}
</style>