<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬로월드</title>

</head>
<body>
    <form action="/book/delete">
	<h1>도서 상세</h1>
	<input type="hidden" name="no" value="${vo.no}">
	<label>도서번호 : ${vo.no}</label>
    <br>
    <label>도서제목 : ${vo.title}</label>
	<br>
	<label>도서가격 : ${vo.price}</label>
    <br>
    <label>도서저자 : ${vo.writer}</label>
    <br>
    <label>출판일자 : ${vo.publishedDate}</label>
    <br>
    <input type="submit" value="삭제하기">
    </form>
</body>
</html>