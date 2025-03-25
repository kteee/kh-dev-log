package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class MemberLoginController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// view 
		req.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userId = req.getParameter("userId");
		String userPwd = req.getParameter("userPwd");

		HttpSession session = req.getSession();
		
		if (userId.length() == 0 || userPwd.length() == 0) {
			session.setAttribute("errormsg", "아이디 또는 비밀번호가 입력되지 않았습니다.");
			resp.sendRedirect("/myapp02/error");
		}
		else {
			session.setAttribute("userId", userId);
			session.setAttribute("userPwd", userPwd);
			resp.sendRedirect("/myapp02/main");
		}
	}
	
}
