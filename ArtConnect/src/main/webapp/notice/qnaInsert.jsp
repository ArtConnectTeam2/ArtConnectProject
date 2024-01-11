<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA작성</title>
<style type="text/css">
header {
	padding: 10px;
	text-align: center;
	}
table {
	border-collapse: collapse; /* 테이블 셀 경계를 합침 */
	width: 30%; /* 테이블의 전체 너비를 화면에 맞게 설정 */
	height: 200px; /* 테이블의 높이를 200px로 설정 */
}

th {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 8px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
}

td {
	border: 1px solid #ddd; /* 셀 경계를 실선으로 지정 */
	padding: 20px; /* 안쪽 여백 설정 */
	height: 12px;
	text-align: center; /* 텍스트를 왼쪽 정렬 */
}

th {
	background-color: #f2f2f2; /* 헤더 배경색 설정 */
}
button {
	background-color: blue;
	color: white;
	height: 22px;
}
</style>
</head>
<body>
    <header>
		<h2>QnA 작성</h2>
    </header>
    
	    <div align="center">
			<!-- HTML5에서는 태그 속성을 바로 명시하지 않고, CSS를 작성하여 붙여준다. -->
			<form action="notice_insert">
			<table border="2" width="200">
				<tr>
					<td>연번 : </td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>글쓴이 : </td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>제목 : </td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea cols="50" rows="20" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="글쓰기"></td>
					<td><input type="reset" value="글쓰기취소"></td>
				</tr>
			</table>
			</form>
		</div>
</body>
</html>