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
<h1>상품관리</h1>
<button>상품등록</button>
<br>
<br>
    <table>
        <thead>
            <tr>
                <th>NO</th>
                <th>품목코드</th>
                <th>품목명</th>
                <th>상품명</th>
                <th>상품일련번호</th>
                <th>상품가격</th>
                <th>보증기간</th>
                <th>입고일</th>
                <th>생산공장이름</th>
                <th>생산공장위치</th>
                <th>제품이미지</th>
                <th>등록일자</th>
                <th>수정일자</th>
                <th>삭제여부</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${productVoList}" var="productVo">
                <tr>
                    <td>${productVo.no}</td>
                    <td>${productVo.itemCode}</td>
                    <td>${productVo.itemName}</td>
                    <td>${productVo.name}</td>
                    <td>${productVo.serialNumber}</td>
                    <td>${productVo.price}</td>
                    <td>${productVo.warrantyPeriod}</td>
                    <td>${productVo.receivedDate}</td>
                    <td>${productVo.factoryName}</td>
                    <td>${productVo.factoryLocation}</td>
                    <td>${productVo.itemImage}</td>
                    <td>${productVo.enrollDate}</td>
                    <td>${productVo.modifyDate}</td>
                    <td>${productVo.delYn}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>