<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	nav {
		display: flex;
		justify-content: space-around;
	}
	
	nav > a {
		text-decoration: none;
		text-size: 24px;
		color: black;
	}
</style>
</head>
<body>

	<h1>홈페이지</h1>
	
	<hr>
	<nav>
		<a href="/home">홈</a>
		<a href="/board/write">게시글 작성</a>
		<a href="/board/list?pno=1">게시글 목록</a>
	</nav>
	<hr>
	
</body>
</html>