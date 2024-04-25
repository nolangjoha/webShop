<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<% request.setCharacterEncoding("utf-8"); %> <%--한글깨짐방지 --%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>여러가지 문자열 함수기능</h3>

<c:set var="title1" value="hello world" />
<c:set var="title2" value="쇼핑몰 중심 JSP입니다." />
<c:set var="str1" value="중심" />

title1="hello world"<br>
title2="쇼핑몰 중심 JSP입니다"<br>
str1="중심"<br><br>

fn:length(title1)=${fn:length(title1) }<br> <%--hello world길이 : 11 출력 --%>
fn:toUpperCase(title1)=${fn:toUpperCase(title1) })<br> <%-- 대문자 --%>
fn:toLowerCase(title1)=${fn:toLowerCase(title1) }<br><br> <%-- 소문자 --%>

fn:substring(title1,3,6)=${fn:substring(title1, 3, 6) }<br> <%-- hello world의 3번째와 6번째 철자/ index는 0부터 시작 --%>
fn:trim(title1)=${fn:trim(title1) }<br> <%-- 양옆의 공백제거 --%>
fn:replace(title1, " ", "/")=${fn:replace(title1, " ", "/") }<br><br> <%-- 중간 공백에 '/'넣기 --%>

fn:indexOf(title2, str1)=${fn:indexOf(title2,str1) }<br> <%-- 중심이라는 단어가 몇번째에서 부터 시작하는지 --%>
fn:contains(title1,str1)=${fn:contains(title1, str1) }<br> <%-- 중심이라는 단어가 존재하는지 --%>
fn:contains(title2,str1)=${fn:contains(title2, str1) }<br> <%-- 중심이라는 단어가 존재하는지 --%>


</body>
</html>