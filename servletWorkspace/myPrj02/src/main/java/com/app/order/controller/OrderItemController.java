package com.app.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/main")
public class OrderItemController extends HttpServlet{
	
	@Override
	protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();

		String itemNo = (String)req.getParameter("itemNo");
		String itemName = (String)req.getParameter("itemName");
		String itemPrice = (String)req.getParameter("itemPrice");
		String itemOrderCount = (String)req.getParameter("orderCount");
		
		int totalPrice = Integer.parseInt(itemPrice) * Integer.parseInt(itemOrderCount);
		String orderItem= itemNo + " / " + itemName + " / " + itemPrice + " / " + itemOrderCount + " / " + totalPrice;
		
		List<String> orderList = (List<String>) session.getAttribute("orderList");
		if (orderList == null) {
		    orderList = new ArrayList<String>();
		}
		orderList.add(orderItem);
		session.setAttribute("orderList", orderList);

		resp.sendRedirect("/myapp02/main/order");

	}
}
