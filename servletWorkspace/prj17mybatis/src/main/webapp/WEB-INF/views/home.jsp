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
	
	<c:if test="${loginMemberVo != null}">
	<h2>${loginMemberVo.nick}님 환영합니다!</h2>
	</c:if>
	
	<c:if test="${loginMemberVo == null}">
	<h2>게스트님 환영합니다!</h2>
	</c:if>
</body>
</html>