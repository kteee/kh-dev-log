package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;

@WebServlet("/board/delete")
public class BoardDeleteController extends HttpServlet {

	// 게시글 삭제 (여러개)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {	
			// data
			// 데이터가 여러개 넘어올 때 getParameter X -> getParameterValues (String 배열 타입)
			String[] delNoArr  = req.getParameterValues("delNo");
			
			// service 호출
			BoardService service = new BoardService();
			int result = service.delete(delNoArr);
			
			// result
			if (result > 0) {
				resp.sendRedirect("/board/list");
			}
			else {
				throw new Exception("게시글 삭제 중 예외 발생..");
			}
		} catch(Exception e) {
			resp.sendRedirect("/common/error");
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
