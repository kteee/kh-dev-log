<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<h2>회원가입</h2>
	
	<form action="/myapp02/join" method="post">
		<input type="text" name="userId" placeholder="아이디">
		<br>
		<input type="password" name="userPwd" placeholder="비밀번호">
		<br>
		<input type="password" name="userPwdCheck" placeholder="비밀번호 확인">
		<br>
		<input type="text" name="userNick" placeholder="닉네임">
		<br>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>