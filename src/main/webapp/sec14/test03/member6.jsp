<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>       

<%-- 컨넥스트 경로가 / 또는 /webShop인 경우 이 경로를 읽어올 때 사용 하는 명령어   --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" ></c:set>

<%-- param값을 value값으로 url1에 대입했다. --%>
<%-- /sec14/test01/member1.jsp?id=hong&pwd=1234&name=홍길동&email=aaa@aaa.com  --%>
<c:url var="url1" value="/sec14/test01/member1.jsp">
	<c:param name="id" value="hong"></c:param>
	<c:param name="pwd" value="1234"></c:param>
	<c:param name="name" value="홍길동"></c:param>
	<c:param name="email" value="aaa@aaa.com"></c:param>
</c:url>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<a href="${contextPath }/sec14/test01/member1.jsp">회원정보출력</a>

<%-- 아래 주소2개는 같은 결과값이다. --%>
<a href="${url1 }">회원정보출력</a>
<a href="${contextPath }/sec14/test01/member1.jsp?id=hong&pwd=1234&name=홍길동&email=aaa@aaa.com">회원정보출력</a>


</body>
</html>