<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬로월드</title>

</head>
<body>
	<h1>도서 등록</h1>
	<form action="/book/write" method="post">
    <label>도서제목</label>
	<input type="text" name="title">
	<br>
	<label>도서가격</label>
	<input type="text" name="price">
    <br>
    <label>도서저자</label>
    <input type="text" name="writer">
    <br>
    <label>출판일자</label>
    <input type="date" name="publishedDate">
    <br>
    <input type="submit" value="등록하기">
	</form>
</body>
</html>