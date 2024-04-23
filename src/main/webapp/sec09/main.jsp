<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메인 홈페이지 입니다.</h3>

				<!-- auth인지 읽어온다.  -->
<%if(session.getAttribute("auth") == null) {%>
<a href="/sec09/login.jsp">로그인</a><br>


<%} else {%>
<!-- request.getSession().setAttribute("auth", user_id);를 통해 들어온 사람이 보게될 페이지 -->
<a href="/sec09/logout.jsp">로그아웃</a><br>
<%} %> 



</body>
</html>