<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입폼</h1>
	<!-- 서버에 존재하고 있는 아래 파일에 로그인 정보를 받자/ 
		해당 파일의 request 객체에 저장된다. -->
<form action="forward.jsp" method="post">
	아이디: <input type="text" name="id"><br>
	비밀번호: <input type="text" name="pw"><br>
	이름: <input type="text" name="name"><br>
	이메일: <input type="text" name="email"><br>
	<input type="submit" value ="회원가입">
	<input type="reset" value ="다시입력">
</form>

</body>
</html>