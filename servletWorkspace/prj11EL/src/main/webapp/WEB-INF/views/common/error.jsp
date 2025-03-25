<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String msgstr = (String)request.getAttribute("msg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>에러페이지</h1>
	
	<!-- 
	<h2><% out.write(msgstr); %></h2>
	<hr>
	<h3><%=msgstr %></h3>
	<hr>
	 -->

	<h4>${sessionScope.msg}</h4>  <!-- EL 사용하면 NULL값 안보이도록 자동 처리 -->
	
</body>
</html>