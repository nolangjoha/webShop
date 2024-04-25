<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>       

<%
	String name = "<b>홍길동</b>";


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--  --%>

<%-- out는 출력하는 기능 --%>
<%--  out는 escapeXml속성을 가지고 있는데 escapeXml는 소스태그를 &lt;b&gt;홍길동&lt;b&gt; 이런식으로 변환되고
	출력은 <b>홍길동</b>로 출력되게 한다.
 	  
 	 게시판에 악의적으로 html태그 혹은 자바스크립트를 작성하는 사람들이 있는데 이러한 코드는 데이터베이스에 저장되어
 	 해당페이지의 전체구조를 깨지게 한다. 이를 방지하기위해 이런 기능을 사욯한다.
 --%>
<c:out value="<%=name %>" escapeXml="true"/><br>   
<c:out value="<%=name %>" escapeXml="false"/><br>



</body>
</html>