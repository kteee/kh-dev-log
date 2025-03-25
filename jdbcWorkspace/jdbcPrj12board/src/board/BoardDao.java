package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.JDBCTemplate;

public class BoardDao {
	
	public int insertBoard(Connection conn, BoardVo vo) throws Exception {
		// db
		String sql = """
					INSERT INTO BOARD (NO, TITLE, CONTENT) VALUES (SEQ_BOARD.NEXTVAL, ? , ? )
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		int result = pstmt.executeUpdate();
		
		return result;
		
	}
	
	public int updateBoard(Connection conn, BoardVo vo) throws Exception {
		// db
		String sql = """
				UPDATE BOARD 
				SET TITLE = ?
				    , CONTENT = ? 
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getNo());
		int result = pstmt.executeUpdate();
		
		return result;
		
	}
	
	public int deleteBoard(Connection conn, String num) throws Exception {
		// db
		String sql = """
				DELETE BOARD
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		int result = pstmt.executeUpdate(); 
		
		return result;
		
	}
	
	public BoardVo selectBoardByNo(Connection conn, String num) throws Exception {
		
		String sql = """
				SELECT * 
				FROM BOARD
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		ResultSet rs = pstmt.executeQuery();
		
		BoardVo vo = null;
		if (rs.next()) {
			// String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			vo = new BoardVo(num, title, content, enrollDate);
		}
		
		rs.close(); // 다 사용하면 close 해줘야 함
		pstmt.close(); // 다 사용하면 close 해줘야 함
	    
		return vo;
	}
	
	public List<BoardVo> selectBoardAll(Connection conn) throws SQLException {
		
		String sql = """
				SELECT * 
				FROM BOARD
				ORDER BY NO DESC
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		List<BoardVo> voList = new ArrayList<BoardVo>();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo vo = new BoardVo(no, title, content, enrollDate);
			voList.add(vo);
		}
		
		rs.close();
		pstmt.close();
		
		return voList;
	}
	
}
