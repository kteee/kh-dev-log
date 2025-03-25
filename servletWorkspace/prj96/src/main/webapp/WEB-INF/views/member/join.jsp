<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input {
		margin-bottom: 3px;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	
	<h3>회원가입</h3>
	
	<form>
		<input type="text" name="userId" placeholder="아이디 입력">
		<br>
		<input type="password" name="userPwd" placeholder="비밀번호 입력">
		<br>
		<input type="text" name="userNick" placeholder="닉네임 입력">
		<br>
		<input type="submit" value="회원가입">
	</form>
	
</body>
</html>