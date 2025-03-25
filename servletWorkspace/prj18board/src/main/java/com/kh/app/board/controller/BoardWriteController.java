package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;

@WebServlet("/board/write")
public class BoardWriteController extends HttpServlet {
	
	// 게시글 작성 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/board/write.jsp").forward(req, resp);
	}
	
	// 게시글 작성 처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			req.setCharacterEncoding("UTF-8"); // 한글처리
			
			// data
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			String writerNo = "1";
			
			BoardVo vo = new BoardVo();
			vo.setTitle(title);
			vo.setContent(content);
			vo.setWriterNo(writerNo);
			
			// service 호출
			BoardService service = new BoardService();
			int result = service.write(vo);
			
			// result
			if (result == 1) {
				resp.sendRedirect("/home");
			}
			else {
				throw new Exception("게시글 작성 중 예외 발생..");
			}
		} catch(Exception e) {
			e.printStackTrace();
			resp.sendRedirect("/common/error");
		}
	}
}
