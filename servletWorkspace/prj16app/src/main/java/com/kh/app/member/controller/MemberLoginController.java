package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/login")
public class MemberLoginController extends HttpServlet{

	// 로그인 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(req, resp);
	}
	
	// 로그인 처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// data
			String userId = req.getParameter("userId");
			String userPwd = req.getParameter("userPwd");
			
			MemberVo vo = new MemberVo();
			vo.setId(userId);
			vo.setPwd(userPwd);
			
			// service 호출
			MemberService service = new MemberService();
			MemberVo loginMemberVo = service.login(vo);
			
			// result
			if(loginMemberVo != null) {
				req.getSession().setAttribute("loginMemberVo", loginMemberVo);
				resp.sendRedirect("/home");
			}
			else {
				throw new Exception("로그인 중 에러 발생..");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			resp.sendRedirect("/common/error");
		}
	}
}
