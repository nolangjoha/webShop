<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
// 선언문. 클래스 레벨에 삽입
	String name ="이순신";

	public String getName(){
		return name;
	}
%>    

<%
	// 서블릿에서 제공했던 request, response로 인해 자바를 그냥 사용 할 수 있다.
	// 스크립트 릿(Script let)
	String age = request.getParameter("age");
%>
   
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 릿</title>
</head>
<body>
	<h1>jsp파일에 자바코드를 삽입하는 방법2- 스트립트 릿</h1>
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>살 입니다!!</h1>
</body>
</html>