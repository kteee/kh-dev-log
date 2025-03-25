<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	}
</style>
</head>
<body>

	<h2>상품 주문 </h2>


	<%
	String item01no = "0136";
	String item01name = "칫솔";
	String item01price = "2000";
	String item01stockCount = "10";
	
	String item02no = "0153";
	String item02name = "물티슈";
	String item02price = "1500";
	String item02stockCount = "20";
	
	String item03no = "0217";
	String item03name = "포카칩";
	String item03price = "1000";
	String item03stockCount = "30";
	
	String item04no = "0415";
	String item04name = "모니터";
	String item04price = "100000";
	String item04stockCount = "5";

	// out.write와 out.print의 차이
	// 숫자는 out.write로 안됨
	%>

	<table>
		<tr> 
			<th>상품번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>구매수량</th>
			<th>상품구매</th>
		</tr>
		<tr>
			<form action="/myapp02/main" method="post">
				<td><% out.write(item01no); %></td>
				<td><% out.write(item01name); %></td>
				<td><% out.write(item01price); %></td>
				<td><input type="number" name="orderCount"></td>
					<input type="hidden" name="itemNo" value="<%= item01no %>">
					<input type="hidden" name="itemName" value="<%= item01name %>">
					<input type="hidden" name="itemPrice" value="<%= item01price %>">
				<td><input type="submit" value="구매하기"></td>
			</form>
			
		</tr>
		<tr>
			<form action="/myapp02/main" method="post">
				<td><% out.write(item02no); %></td>
				<td><% out.write(item02name); %></td>
				<td><% out.write(item02price); %></td>
				<td><input type="number" name="orderCount"></td>
					<input type="hidden" name="itemNo" value="<%= item02no %>">
					<input type="hidden" name="itemName" value="<%= item02name %>">
					<input type="hidden" name="itemPrice" value="<%= item02price %>">
				<td><input type="submit" value="구매하기"></td>
			</form>
		</tr>	
		<tr>
			<form action="/myapp02/main" method="post">
				<td><% out.write(item03no); %></td>
				<td><% out.write(item03name); %></td>
				<td><% out.write(item03price); %></td>
				<td><input type="number" name="orderCount"></td>
					<input type="hidden" name="itemNo" value="<%= item03no %>">
					<input type="hidden" name="itemName" value="<%= item03name %>">
					<input type="hidden" name="itemPrice" value="<%= item03price %>">
				<td><input type="submit" value="구매하기"></td>
			</form>
		</tr>
		<tr>
			<form action="/myapp02/main" method="post">
				<td><% out.write(item04no); %></td>
				<td><% out.write(item04name); %></td>
				<td><% out.write(item04price); %></td>
				<td><input type="number" name="orderCount"></td>
					<input type="hidden" name="itemNo" value="<%= item04no %>">
					<input type="hidden" name="itemName" value="<%= item04name %>">
					<input type="hidden" name="itemPrice" value="<%= item04price %>">
				<td><input type="submit" value="구매하기"></td>
			</form>
		</tr>
	</table>
	
	<br>
		
	<button onclick="location.href='/myapp02/logout'">로그아웃</button>
	
	<hr>
	
	<% String id = (String)session.getAttribute("userId"); %>
	
	<h2><% out.write(id); %>님 주문내역</h2>
	
	<%@page import="java.util.List" %>
	<%  out.write("상품번호 / 상품명 / 가격 / 구매수량 / 총구매금액");
		out.write("<br>");
		
		List<String> orderList = (List<String>)session.getAttribute("orderList");
		
		if (orderList != null) {
		    for (String list : orderList) {
		        out.write(list + "<br>");
		    }
		} 
		else {
		    out.write("주문 내역이 없습니다.");
		}

	%>
</body>
</html>