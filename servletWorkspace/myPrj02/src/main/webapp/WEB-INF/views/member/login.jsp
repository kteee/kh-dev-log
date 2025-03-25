<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<h2>로그인</h2>
	<form action="/myapp02/login" method="post">
		<input type="text" name="userId" placeholder="아이디">
      	<br>
      	<input type="password" name="userPwd" placeholder="비밀번호">
      	<br>
      	<input type="submit" value="로그인" onclick="logincheck();">
	</form>
	<br>
	<button>아이디찾기</button>
	<button>비밀번호찾기</button>
	<button onclick="location.href='/myapp02/join'">회원가입</button>
	
</body>
</html>