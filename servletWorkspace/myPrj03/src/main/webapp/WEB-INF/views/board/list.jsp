<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="/WEB-INF/views/common/header.jsp" %>

	<input type="text" name="searchValue">
	<input type="submit" value="검색">
	<hr>
	<form action="/board/delete" method="get">
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일자</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${voList}" var="vo">
			<tr>
				<td>${vo.no}</td>
				<td>${vo.title}</td>
				<td>${vo.writerNo}</td>
				<td>${vo.hit}</td>
				<td>${vo.enrollDate}</td>
				<td><input type="checkbox" name="deleteNo" value="${vo.no}"></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<input type=submit value="삭제하기">
	</form>
	
	<div id="page-area">
		<c:if test="${pvo.startPage != 1}">
			<a href="/board/list?pno=${pvo.startPage - 1}">이전</a>
		</c:if>
		<c:forEach begin="${pvo.startPage}" end="${pvo.endPage}" step="1" var="i">
			<a href="/board/list?pno=${i}">${i}</a>
		</c:forEach>
		<c:if test="${pvo.endPage < pvo.maxPage}">
			<a href="/board/list?pno=${pvo.endPage + 1}">다음</a>
		</c:if>
	</div>
	
</body>
</html>