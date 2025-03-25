<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬로월드</title>
<style>
table, tr, th, td {
    border : 1px solid black;
    border-collapse : collapse;
    text-align : center;
}
</style>
</head>
<body>
	<h1>도서 목록</h1>
    <table>
        <thead>
            <tr>
                <th>NO</th>
                <th>도서제목</th>
                <th>도서가격</th>
                <th>도서저자</th>
                <th>출판일자</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${voList}" var="vo">
                <tr>
                    <td><a href="/book/detail?no=${vo.no}">${vo.no}</td>
                    <td>${vo.title}</td>
                    <td>${vo.price}</td>
                    <td>${vo.writer}</td>
                    <td>${vo.publishedDate}</td>
                </tr>
            </c:forEach>
        <tbody>
    </table>
</body>
</html>