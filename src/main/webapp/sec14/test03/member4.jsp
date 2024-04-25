<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>    


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   

<!-- 변수선언 -->
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<%--<c:set var="name" value="${'홍길동' }" scope="page" /> --%>
<c:set var="age" value="${22 }" scope="page" />
<c:set var="height" value="${177 }" scope="page" />    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>choose,when절 : 다중if문과 같다.</h3>
<%-- when절은 choose문으로 감싸야 한다.   --%>



<%-- <c:when test="${name ==null }">   --%>
<c:choose>
	<c:when test="${empty name }"> <%-- name이란 변수가 존재하지 않거나(name이 null이거나) 빈문자열인지 체크 --%>
		<h3>name 변수가 존재하지 않습니다.</h3>
	</c:when>
	<c:otherwise>  <%-- otherewise는 else같은 개념이다. --%>
			아이디:${id } <br>
			비밀번호:${pwd} <br>
			이름: ${name }<br>
			나이: ${age } <br>
			키: ${height }<br>
	</c:otherwise>
</c:choose>




</body>
</html>