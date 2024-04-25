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
<h3>fmt의 number태그를 이용한 숫자 포맷팅 예제.</h3>

<%--변수선언 --%>
<c:set var="price" value="100000000"/><br>


1)통화로 표현:
<fmt:formatNumber type="currency" currencySymbol="￦" value="${price }" groupingUsed="true"/><br>
2)퍼센트로 표현:
<fmt:formatNumber value="${price }" type="percent" groupingUsed="false" /><br>

<fmt:formatNumber value="${price }" type="number" var="priceNumber" /><br> <%--priceNumber변수 값이 아래 행으로 --%>
3)일반 숫자로 표현: ${priceNumber }<br>


</body>
</html>