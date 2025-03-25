package kh.com.app.board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/write")
public class BoardWriteController extends HttpServlet {

	// 게시글 작성 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/board/write.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// data
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		// conn
		Connection conn = null;
		try {
		// 자바 프로그램을 실행할 때는 필요한 클래스가 자동 로딩되는데
		// 웹에서 프로그램을 구동할 때는 클래스가 자동으로 로딩되지 않는다 
		// 그래서 수동으로 추가해줘야 함 
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 해당 클래스를 사용할 수 있게 만드는 작업
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 예외 던지기 안됨 -> 오버라이드 때문에 (시그니처가 바뀌면 오버라이드가 안됨)
		// 오버라이드 예외 던지는거 시그니처 똑같이 해야한다
		// 똑같이 못한다면 더 좁은곳에서 던지면 된다
		
		// SQL
		int result = 1;
		try {
			String sql = "INSERT INTO BOARD(NO, TITLE, CONTENT) VALUES(SEQ_BOARD.NEXTVAL, ?, ?) ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();

		}			

		// result
		if (result == 1) {
			// 성공 시 리디렉트 게시글 목록으로
			resp.sendRedirect("/app12/board/list");
		}
		
		else {
			// 실패 시 리디렉트 에러페이지로
			resp.sendRedirect("/app12/common/error");
		}
	}
}
