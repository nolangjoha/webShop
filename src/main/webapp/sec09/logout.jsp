<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% session.invalidate(); %>
<!-- 로그아웃 명령어 -->
<% response.sendRedirect("/sec09/main.jsp"); %>
<!-- /sec09/main.jsp로 이동 -->
</body>
</html>