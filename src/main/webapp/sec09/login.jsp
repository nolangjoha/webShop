<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% session.setMaxInactiveInterval(5*60); %>  <!-- 세션 소멸시간, 30초로 설정 -->
	<h3>서녕이의 눈누난나 로그인 페이지</h3>
	<form action = "/Sec09Ex01LoginServlet" method = "post">
		아이디 : <input type = "text" name = "user_id"><br>
		비밀번호 : <input type = "password" name = "user_pw"><br>
		<input type = "hidden" name = "user_address" value="이젠빌딩 404호">
		<input type = "hidden" name = "email" value="aaa@aaa.com">
		<input type = "hidden" name = "user_hp" value="010-0000-0000">
		<input type = "submit" value = "로그인">
		<input type = "reset" name = "다시입력">
	</form>


</body>
</html>