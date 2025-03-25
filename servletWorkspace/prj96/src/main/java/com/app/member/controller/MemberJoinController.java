package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.member.service.MemberService;
import com.app.member.vo.MemberVo;

@WebServlet("/member/join")
public class MemberJoinController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// data
		String userId = req.getParameter("userId");
		String userPwd = req.getParameter("userPwd");
		String userNick = req.getParameter("userNick");
	
		MemberVo vo = new MemberVo();
		vo.setId(userId);
		vo.setPwd(userPwd);
		vo.setNick(userNick);
		
		// service 호출
		MemberService service = new MemberService();
		int result = service.join(vo);
		
		// result 
		if(result == 1) {
			resp.sendRedirect("/app96/home");
		}
		else {
			resp.sendRedirect("/app96/error");

		}
	}
	
}
