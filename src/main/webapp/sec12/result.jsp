<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과출력</title>
</head>
<body>
	<h1>결과출력</h1>
	<%
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
	%>
	<h1>아이디 : <%=user_id %></h1>
	<h1>비밀번호 : <%=user_pw %></h1>
	


</body>
</html>