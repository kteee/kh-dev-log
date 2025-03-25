package com.kh.app.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;

public class BoardDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String[] delArr = req.getParameterValues("deleteNo");
			
			BoardService service = new BoardService();
			int result = service.delete(delArr);
			
			if(result > 0) {
				resp.sendRedirect("/board/list");
			}
			else {
				throw new Exception("예외 발생...");
			}
		}catch(Exception e) {
			resp.sendRedirect("/common/error");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
