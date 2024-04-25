<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //jsp 내장객체: request, response, out, session, application 등등
	//request 객체의 역할 : 클라이언트로부터 전송되어 온 모든 정보를 담당하는 기능(예: 사용자가 입력한 회원가입 데이터, 사용자의 컴퓨터ip 등)

	//requestr 객체 안에 is, pw, name, email 파라미터 저장
	//request 객체에 데이터를 추가, setAttribute는 추가를 의미함.
	request.setAttribute("address","서울시 노원구 이젠");// 서울시 노원구 이젠이라는 정보를 address의 이름으로 request객체에 추가했다.
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--<jsp:forward page="이동할 주소 또는 파일명"></jsp:forward>  -->
<jsp:forward page="member2.jsp"></jsp:forward> 
<!-- forward방식으로 하면 member2.jsp로주소가 변하지 않는다? -->

<!-- 요 아래는 의미없는 코드. 위에 코드가 실행되버리면 아래 코드는 실행되지 않는다. -->
<hr>
회사명 : 이젠컴퓨터 아카데미

</body>
</html>