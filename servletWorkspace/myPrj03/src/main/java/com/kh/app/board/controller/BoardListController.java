package com.kh.app.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.page.vo.PageVo;

@WebServlet("/board/list")
public class BoardListController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			BoardService service = new BoardService();
			
			// data
			int listCount = service.getBoardCount();
			String pno = req.getParameter("pno");
			if(pno == null) {
				pno = "1";
			}
			int currentPage = Integer.parseInt(pno);
			int pageLimit = 5;
			int boardLimit = 10;
			PageVo pvo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			// service
			List<BoardVo> voList = service.list(pvo);

			System.out.println(listCount);
			System.out.println(pno);
			
//			for(BoardVo vo : voList) {
//			System.out.println(voList);
//			}
			
			// result
			req.setAttribute("pvo", pvo);
			req.setAttribute("voList", voList);
			req.getRequestDispatcher("/WEB-INF/views/board/list.jsp").forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
			resp.sendRedirect("/common/error");
		}
	}

}
