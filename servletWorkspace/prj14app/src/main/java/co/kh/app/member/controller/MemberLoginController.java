package co.kh.app.member.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			
			// conn
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "C##KH";
			String password = "1234";
			Connection conn = DriverManager.getConnection(url, user, password);
			
			// DB
			String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ? AND DEL_YN = 'N'";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			ResultSet rs = pstmt.executeQuery();
			
			MemberVo vo = null;
			if(rs.next()) {
				String no = rs.getString("NO");
				String id = rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String enrollDate = rs.getString("ENROLL_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				vo = new MemberVo();
		        vo.setNo(no);
		        vo.setId(id);
		        vo.setPwd(pwd);
		        vo.setNick(nick);
		        vo.setEnrollDate(enrollDate);
		        vo.setModifyDate(modifyDate);
		        vo.setDelYn(delYn);
			}
			
			// result
			if(vo != null) {
				req.getSession().setAttribute("loginMemberVo", vo); // 세션에 로그인된 회원정보 저장
				resp.sendRedirect("/app/home");
			}
			else {
				resp.sendRedirect("/app/common/error");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
