<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬로월드</title>
<style>
    table, th, tr, td{
        border: 1px solid black;
        border-collapse: collapse;
    }
</style>
</head>
<body>
	<h1>품목조회</h1>
        <table>
            <thead>
                <tr>
                    <th>품목코드</th>
                    <th>품목명</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${itemVoList}" var="itemVo">
                    <tr>
                        <td>${itemVo.no}</td>
                        <td>${itemVo.itemName}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

</body>
</html>