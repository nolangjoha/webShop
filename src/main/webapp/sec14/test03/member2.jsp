<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>    

<%--이런 코드는 이제 복붙 --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   

<!-- 변수선언 -->
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동' }" scope="page" />
<c:set var="age" value="${30 }" scope="page" />
<c:set var="height" value="${180 }" scope="page" />

<!-- 변수제거 -->
<c:remove var="age"/>
<c:remove var="height"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!--  위에서 변수를 제거해서 나이와 키는 출력되지 않을 것이다. -->
아이디:${id } <br>
비밀번호:${pwd}] <br>
이름: ${name }<br>
나이: ${age } <br>
키: ${height }<br>


</body>
</html>