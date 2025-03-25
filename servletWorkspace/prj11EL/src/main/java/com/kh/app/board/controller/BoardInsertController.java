package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/write")
public class BoardInsertController extends HttpServlet{
	
	// 게시글 작성 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/board/boardWrite.jsp").forward(req, resp);
	}
	
	// 작성된 게시글 처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// data 꺼내기
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		// DB (출력문으로 대체)
		System.out.println(title);
		System.out.println(content);
		
		int result = 1; // DB insert 시 반환된 result 값 (근데 지금은 무조건 성공이라고 가정하고 진행)
		
		// result
		if(result == 0) {
			// 게시글 작성 성공 시 게시글 목록으로 이동
			resp.sendRedirect("/app11/board/list");
		}
		else {
			// 게시글 작성 실패 시 에러페이지 띄움
			// 포워딩, 리다이렉트 상관없지만 포워딩 쓰면 새로고침 시 계속 요청이 전달되니까 서버에 부담이???
			// 그래서 리다이렉트 사용을 권장하지만 연습차원으로 포워딩으로 작성해보겠음
			
			// HttpSession session = req.getSession();
			
			req.setAttribute("msg", "게시글 작성 실패..(리퀘스트)");
			req.getSession().setAttribute("msg", "게시글 작성 실패..(세션)");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
	}
	
}
