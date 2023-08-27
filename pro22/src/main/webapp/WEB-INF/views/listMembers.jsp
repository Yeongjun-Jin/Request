<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" width="80%">
		<tr align="center" bgcolor="lightgreen">
			<td><b>아이디</b></td>
			<td><b>비밀번호</b></td>
			<td><b>이름</b></td>
			<td><b>이메일</b></td>
			<td><b>가입일</b></td>
		</tr>
		<c:forEach var="dto" items="${membersList }">
			<tr align="center">
				<td>${dto.id }</td>
				<td>${dto.pwd }</td>
				<td>${dto.name }</td>
				<td>${dto.email }</td>
				<td>${dto.joinDate }</td>
			</tr>
		</c:forEach>
	</table>
	<h1 align="center"><a href="#">회원가입</a></h1>
</body>
</html>