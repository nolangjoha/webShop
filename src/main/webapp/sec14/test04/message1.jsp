<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("utf-8"); %> <%--한글깨짐방지 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--국가별 언어설정 코드/ 테스트 목적--%>
<fmt:setLocale value="en_US"/>

<h3>회원정보</h3>
<fmt:bundle basename="resource.member">
이름: <fmt:message key="mem.name"/><br>
주소: <fmt:message key="mem.address"/><br>
직업: <fmt:message key="mem.job"/>

</fmt:bundle>





</body>
</html>