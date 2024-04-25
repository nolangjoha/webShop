<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	//id의 성격이 object로 저장되어 있어서 형변환 해줌.
	String id = (String) request.getAttribute("id");  
	String pwd = (String) request.getAttribute("pwd");
	
	String name = (String) session.getAttribute("name");
	String email = (String) session.getAttribute("email");
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- EL문법은 위에 String id, pwd, name, email이 참조가 가능하다.-->
아이디 : ${id } <br>
비밀번호 : ${pwd } <br>
이름: ${name } <br>
이메일 : ${email } <br>





</body>
</html>