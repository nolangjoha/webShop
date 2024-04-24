<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>       

<%
	//http://localhost:9090/sec12/hello4.jsp?age=100 
	//100은 임의로 넣은 값	
	/*
	String age = request.getParameter("age");	
	*/
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주석문 연습</title>
</head>
<body>
	<!-- 아래 name을 감싸고 있는 = 포함 괄호는 out.print(name)와 같은 의미 -->
	<h1>주석문 예제 입니다!</h1>
	<%--이게 jsp주석임--%> 
	<%-- 	<%=Integer.parseInt(age) + 10 %>   --%>
	
	<!-- <%=10%>  -->
	<%-- html코드는 웹브라우저에서 읽는다. jsp는 톰캣 서버에서 읽는다.
	    실행시 톰캣 서버가 먼저 작동하므로 html주석은 jsp코드의 작동을 멈출 수 없다.
	    때문에 실행시키면 웹브라우저에서는 보여지지 않지만 실행된 코드를 가지고 있을 것이다.--%>
	
	<%-- <%=10%>  --%>

	
</body>
</html>