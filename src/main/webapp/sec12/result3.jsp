<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과출력창</title>
</head>
<body>
<%
	//user_id가 null일 경우 클라이언트에서 user_id 파라미터가 존재하지 않을때
	// user_id.length() == 0일 경우에는 user_id 파라미터는 존재하나 입력한 값이 없을 때
	if(user_id == null || user_id.length() == 0) {
%>	
	아이디를 입력하세요.<br>
	<a href="/sec12/login.jsp">로그인 하기</a>
<%
	}else {
		if(user_id.equals("admin")) {
					
%>
	<h1>관리자로 로그인 했습니다.</h1>
	<form>
		<input type="button" value="회원정보삭제하기"/>
		<input type="button" value="회원정보수정하기"/>
	</form>
<%
	}else{
%>
	<h1>환영합니다. <%=user_id %>님!! </h1>
<%
	}
}
%>




</body>
</html>