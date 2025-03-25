package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/login/select")
public class MemberLoginSelectController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String userPwd = req.getParameter("userPwd");

		System.out.println(userId);
		System.out.println(userPwd);

		// HttpSession session = req.getSession()  // jsp는 이미 세션얻는 거 만들어두고 있음
		HttpSession s = req.getSession();
		s.setAttribute("abc", "홍길동");
		// 세션.데이터담기(키, 밸류)
		
		resp.sendRedirect("/app08/home/view");
	}
}
