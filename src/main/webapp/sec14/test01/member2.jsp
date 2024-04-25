<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");//한글깨짐방지

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>EL내장객체 : param</h3>
아이디 : ${param.id } <br>
비밀번호 : ${param.pw } <br>
이름 : ${param.name } <br>
이메일 :  ${param.email } <br>
주소 : ${requestScope.address }
<!-- requestScope : 현재 요청이 발생했을때 그 영역 안에서만 사용할 수 있는 정보/ 
	 				추가된 정보를 읽어올 수 있다.
	 member2에허 request.setAttribute로 정보를 추가했는데 그러한 정보를 관리함.				
	 				 -->

</body>
</html>