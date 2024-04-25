<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   


<%
	//스프링에서 다음고 같은 정보가 구성.
	List dataList = new ArrayList();
	dataList.add("hello");
	dataList.add("world");
	dataList.add("안녕하세요");
%>

<%-- 변수선언 --%>
<c:set var="list" value="<%= dataList%>" />  <%-- dataList에는 값이 3개가 들어있다. --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>반복문 실습</h3>

<%-- 자바for문을 생각하면 쉽다. --%>
<%-- i란변수가 1에서 10까지 1씩 증가 / valStatus는 임의적으로 작성 --%>
<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
	i = ${i } &nbsp;&nbsp;&nbsp;  반복횟수 : ${loop.count }<br>
</c:forEach>
<br>

<%-- i란변수가 1에서 10까지 2씩 증가 / valStatus는 임의적으로 작성 --%>
<c:forEach var="i" begin="1" end="10" step="2">
	5 * ${i } = ${5 * i}<br>  
</c:forEach>	
<br>

<%-- list에는 <c:set var="list" value="dataList" /> (16행)으로 인해
	변수가 3개 들어있어서 3번 반복된다. --%>
<c:forEach items="${list }" var="data">
 	${data } <br>   <%-- 결과 : hello world 안녕하세요 --%> 	
</c:forEach>  
<br>

<%-- delims: 구분자 --%>
<c:set var="fruits" value="사과, 파인애플, 바나나, 망고, 귤" />
<c:forTokens items="${fruits }" delims="," var="token">
	${token }<br>
</c:forTokens>




</body>
</html>