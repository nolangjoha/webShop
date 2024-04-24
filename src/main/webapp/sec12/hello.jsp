<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
//선언문 / 클래스 레벨의 필드, 메서드 위치에 존재
	String name = "홍길동";

	public String getName(){
		return name;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 파일에 자바코드 삽입하기</title>
</head>
<body>
	<h3>JSP 파일에 자바코드 삽입하는 방법- 선언문</h3>
	<h1>안녕하세요 <%=name %></h1>


</body>
</html>