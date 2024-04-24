<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	상대경로 :	<img src="../image/duke.png"/> <br>
 	<!-- ..은 현재 파일이 있는 위치에서 부모 폴더를 가리킨다. -->
	절대경로 : <img src="/image/duke.png"/>
 	<!-- "http://localhost:9090/image/duke.png" 앞쪽 localhost부분은 생략 할 수 있음.-->
</body>
</html>